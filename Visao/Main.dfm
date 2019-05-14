object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  ActiveControl = cgVitrine
  Caption = 'Ponto de vendas'
  ClientHeight = 573
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 220
    Width = 1016
    Height = 353
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cgVitrine: TDBCtrlGrid
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 996
      Height = 328
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 15
      Align = alClient
      AllowDelete = False
      AllowInsert = False
      ColCount = 4
      DataSource = dsVitrine
      PanelBorder = gbNone
      PanelHeight = 164
      PanelWidth = 244
      TabOrder = 0
      RowCount = 2
      OnPaintPanel = cgVitrinePaintPanel
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 224
        Height = 144
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          224
          144)
        object Shape2: TShape
          Left = 8
          Top = 0
          Width = 216
          Height = 144
          Align = alClient
          Pen.Style = psClear
          ExplicitLeft = 4
          ExplicitWidth = 220
          ExplicitHeight = 145
        end
        object lblMainTitulo: TLabel
          Left = 27
          Top = 12
          Width = 49
          Height = 16
          Caption = 'Tapioca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMainPreco: TLabel
          AlignWithMargins = True
          Left = 27
          Top = 78
          Width = 68
          Height = 19
          Alignment = taCenter
          Caption = 'R$: 1,50'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMainDesc: TLabel
          AlignWithMargins = True
          Left = 27
          Top = 31
          Width = 121
          Height = 14
          Caption = 'Tapiocaa tradicional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Shape5: TShape
          Left = -392
          Top = 111
          Width = 616
          Height = 33
          Anchors = [akLeft, akRight, akBottom]
          Pen.Color = clMedGray
          Pen.Style = psInsideFrame
        end
        object Shape6: TShape
          AlignWithMargins = True
          Left = 26
          Top = 117
          Width = 169
          Height = 21
          Margins.Left = 20
          Margins.Top = 10
          Margins.Right = 20
          Margins.Bottom = 10
          Anchors = [akTop, akRight]
          Brush.Color = 33023
          Pen.Style = psClear
        end
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 8
          Height = 144
          Align = alLeft
          Brush.Color = clGreen
          Pen.Style = psClear
        end
        object Label9: TLabel
          AlignWithMargins = True
          Left = 62
          Top = 120
          Width = 101
          Height = 13
          Alignment = taCenter
          Anchors = [akTop, akRight]
          Caption = 'Adicionar ao carrinho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnAddCarrinho: TShape
          AlignWithMargins = True
          Left = 12
          Top = 114
          Width = 204
          Height = 27
          Margins.Left = 20
          Margins.Top = 10
          Margins.Right = 20
          Margins.Bottom = 10
          Anchors = [akTop, akRight]
          Brush.Style = bsClear
          Pen.Color = clNone
          Pen.Style = psClear
          OnMouseDown = btnAddCarrinhoMouseDown
        end
        object lblMainQtd: TLabel
          AlignWithMargins = True
          Left = 127
          Top = 78
          Width = 68
          Height = 19
          Alignment = taCenter
          Caption = 'R$: 1,50'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 4194304
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 37
      Top = 11
      Width = 112
      Height = 19
      Caption = 'Tapioca do Billy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel6: TPanel
      Left = 816
      Top = 0
      Width = 200
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Vers'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Shape1: TShape
        AlignWithMargins = True
        Left = 126
        Top = 10
        Width = 54
        Height = 21
        Margins.Left = 20
        Margins.Top = 10
        Margins.Right = 20
        Margins.Bottom = 10
        Align = alRight
        Brush.Color = 4227072
        Pen.Style = psClear
        ExplicitLeft = 163
      end
      object lblVersion: TLabel
        AlignWithMargins = True
        Left = 137
        Top = 13
        Width = 32
        Height = 13
        Alignment = taCenter
        Caption = 'v0.1.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1016
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 2
    object btnAdministracao: TSpeedButton
      Left = 216
      Top = 0
      Width = 120
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Administra'#231#227'o'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        04000000000000020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF77FFFFFFF7777FFFFFFF77FFFFFFFFFF77FFFFF
        FF7777FFFFFFF77FFFFFFFFFF778FFFFFF7777FFFFFF877FFFFFFFFFF877FFFF
        FF8778FFFFFF778FFFFFFFFFFF778FFFFF8778FFFFF877FFFFFFFFFFFF877FFF
        FFF77FFFFFF778FFFFFFFFFFFFF777FFFFFFFFFFFF777FFFFFFFFFFFFFFF7778
        FFF77FFF8777FFFFFFFFFFFFFFFFF77778877887777FFFFFFFFFFFFFFFFFFF87
        7777777778FFFFFFFFFFFFFFFFFFFFF8777777778FFFFFFFFFFFFFFFFFFFFF87
        778FF87778FFFFFFFFFFFFFFFFFFFF778FFFFFF877FFFFFFFFFFFFFFFFFFF877
        FFFFFFFF778FFFFFFFFFFFFFFFFFF778FFFFFFFF877FFFFFFFFFFFFFFFFFF77F
        FFFFFFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFFFFFFFFFFFFFFFF778
        FFFFFFFF877FFFFFFFFFFFFFFFFFF877FFFFFFFF778FFFFFFFFFFFFFFFFFFF77
        8FFFFFF877FFFFFFFFFFFFFFFFFFFF87778FF87778FFFFFFFFFFFFFFFFFFFFF8
        777777778FFFFFFFFFFFFFFFFFFFFFFFF877778FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Visible = False
      OnClick = btnAdministracaoClick
      ExplicitLeft = 189
      ExplicitTop = 3
    end
    object btnRelatorios: TSpeedButton
      Left = 336
      Top = 0
      Width = 119
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Relat'#243'rios'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FBBCBCBC7C7C7C5F5F5F5F5F5F7C7C7CBDBDBDFCFCFCFFFFFFFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFEEEEEE7B7B
        7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B7C7C7CEEEEEEFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFAFAFA7979795B5B
        5B737373CCCCCCF7F7F7F6F6F6CBCBCB7272725B5B5B7B7B7BFAFAFAFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFBABABA5B5B5B7575
        75F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFF4F4F47373735B5B5BB8B8B8FFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF7D7D7D5B5B5BCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB5B5B5B7E7E7EFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF6262625B5B5BF7F7
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F65B5B5B636363FFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF6363635B5B5BF7F7
        F7FFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B646464FFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF7D7D7D5B5B5BCCCC
        CCFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B7E7E7EFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFBABABA5B5B5B7575
        75F5F5F5FFFFFFFFFFFF5B5B5B5B5B5B5B5B5B6161615B5B5BB8B8B8FFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFAFAFA7979795B5B
        5B737373CCCCCCF2F2F25B5B5B5B5B5B5B5B5B5B5B5B7B7B7BFAFAFAFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFEEEEEE7B7B
        7B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B7C7C7CEEEEEEFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFAFA
        FAB4B4B47979796666666666667A7A7AB5B5B5FBFBFBFFFFFFFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B757575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFF5F5F57D7D7D5B
        5B5B737373EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BF5F5F57D7D7D5B5B5B73
        7373EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B7D7D7D5B5B5B737373EE
        EEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B747474EEEEEEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B7A7A7AF2F2F2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B7B7B7BF3F3F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Visible = False
      ExplicitLeft = 358
      ExplicitTop = -3
    end
    object btnCardapio: TSpeedButton
      Left = 109
      Top = 0
      Width = 107
      Height = 41
      Align = alLeft
      Caption = 'Cardapio'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0FFFFFFFF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F57C7C7C7C7C7CF5F5F5FF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFF1F1F17777775B5B5B5B5B5B777777F1
        F1F1FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFBABABA5B5B5B7878787878785B5B5B77
        7777F1F1F1FFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCF1F1F1F1F1F17878785B
        5B5BBBBBBBFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1BC
        BCBCFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0FFFFFFFF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F57C7C7C7C7C7CF5F5F5FF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFF1F1F17777775B5B5B5B5B5B777777F1
        F1F1FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFBABABA5B5B5B7878787878785B5B5B77
        7777F1F1F1FFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCF1F1F1F1F1F17878785B
        5B5BBBBBBBFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1BC
        BCBCFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnCardapioClick
    end
    object btnTelaPrincipal: TSpeedButton
      Left = 0
      Top = 0
      Width = 109
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Principal'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        04000000000000020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777777
        77FFFF777777777FFFFFFFFFF777777777FFFF777777777FFFFFFFFFF77FFFFF
        77FFFF77FFFFF77FFFFFFFFFF77FFFFF77FFFF77FFFFF77FFFFFFFFFF77FFFFF
        77FFFF77FFFFF77FFFFFFFFFF77FFFFF77FFFF77FFFFF77FFFFFFFFFF77FFFFF
        77FFFF77FFFFF77FFFFFFFFFF77FFFFF77FFFF77FFFFF77FFFFFFFFFF77FFFFF
        77FFFF77FFFFF77FFFFFFFFFF77FFFFF77FFFF77FFFFF77FFFFFFFF8F77FFFFF
        77777777FFFFF77F8FFFFF87777FFFFF77777777FFFFF77778FFFFF7777FFFFF
        FFFFFFFFFFFFF7777FFFFFFF777FFFFFFFFFFFFFFFFFF777FFFFFFFFF777FFFF
        FFFFFFFFFFFF777FFFFFFFFFFF777FFFFFFFFFFFFFF777FFFFFFFFFFFFF777FF
        FFFFFFFFFF777FFFFFFFFFFFFFFF777FFFFFFFFFF777FFFFFFFFFFFFFFFFF777
        FFFFFFFF777FFFFFFFFFFFFFFFFFFF777FFFFFF777FFFFFFFFFFFFFFFFFFFFF7
        77FFFF777FFFFFFFFFFFFFFFFFFFFFFF777FF777FFFFFFFFFFFFFFFFFFFFFFFF
        F777777FFFFFFFFFFFFFFFFFFFFFFFFFFF7777FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnLogin: TSpeedButton
      Left = 776
      Top = 0
      Width = 120
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Login'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        04000000000000020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77FFFF
        FFFFFFFFFFFF77FFFFFFFFFFFF77FFFFFFFFFFFFFFFF77FFFFFFFFFFFF778FFF
        FFFFFFFFFFF877FFFFFFFFFFFF877FFFFFFFFFFFFFF778FFFFFFFFFFFFF778FF
        FFFFFFFFFF877FFFFFFFFFFFFFF8778FFFFFFFFFF8778FFFFFFFFFFFFFFF7778
        FFFFFFFF8777FFFFFFFFFFFFFFFFF87778FFFF87778FFFFFFFFFFFFFFFFFFF87
        7777777778FFFFFFFFFFFFFFFFFFFFF8777777778FFFFFFFFFFFFFFFFFFFFF87
        778FF87778FFFFFFFFFFFFFFFFFFFF778FFFFFF877FFFFFFFFFFFFFFFFFFF877
        FFFFFFFF778FFFFFFFFFFFFFFFFFF778FFFFFFFF877FFFFFFFFFFFFFFFFFF77F
        FFFFFFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFFFFFFFFFFFFFFFF778
        FFFFFFFF877FFFFFFFFFFFFFFFFFF877FFFFFFFF778FFFFFFFFFFFFFFFFFFF77
        8FFFFFF877FFFFFFFFFFFFFFFFFFFF87778FF87778FFFFFFFFFFFFFFFFFFFFF8
        777777778FFFFFFFFFFFFFFFFFFFFFFFF877778FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnLoginClick
      ExplicitTop = -3
    end
    object btnCadastro: TSpeedButton
      Left = 896
      Top = 0
      Width = 120
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Cadastro'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        04000000000000020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF877778FFFFFFFFFFFFFFFFFFFFFFFF7777777778FFFFFFFFFFFFFFFFF
        FFFF77778FF87777FFFFFFFFFFFFFFFFFFF777FFFFFFF8778FFFFFFFFFFFFFFF
        FFF77FFFF77FFFF77FFFFFFFFFFFFFFFFF878FFFF77FFFF878FFFF77FFFFFFFF
        FF778FFFF77FFFF877FFFF77FFFFFFFFFF77FF77777777FF77FFFF778FFFFFFF
        FF77FF77777777FF77FFFF877FFFFFFFFF778FFFF77FFFF877FFFFF778FFFFFF
        FF878FFFF77FFFF878FFFFF8778FFFFFFFF77FFFF77FFFF77FFFFFFF7778FFFF
        FFF777FFFFFFF8777FFFFFFFF87778FFFF8777778FF87777FFFFFFFFFF877777
        777777777777777FFFFFFFFFFFF8777777778FF877778FFFFFFFFFFFFF87778F
        F87778FFFFFFFFFFFFFFFFFFFF778FFFFFF877FFFFFFFFFFFFFFFFFFF877FFFF
        FFFF778FFFFFFFFFFFFFFFFFF778FFFFFFFF877FFFFFFFFFFFFFFFFFF77FFFFF
        FFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFFFFFFFFFFFFFFFF778FFFF
        FFFF877FFFFFFFFFFFFFFFFFF877FFFFFFFF778FFFFFFFFFFFFFFFFFFF778FFF
        FFF877FFFFFFFFFFFFFFFFFFFF87778FF87778FFFFFFFFFFFFFFFFFFFFF87777
        77778FFFFFFFFFFFFFFFFFFFFFFFF877778FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnCadastroClick
      ExplicitLeft = 920
      ExplicitTop = 3
    end
    object btnLogout: TSpeedButton
      Left = 656
      Top = 0
      Width = 120
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Logout'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        04000000000000020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF877778FFFFFFFFFFFFFFFFFFFFFFFF7777777778FFFFFFFFFFFFFFFFF
        FFFF77778FF87777FFFFFFFFFFFFFFFFFFF777FFFFFFF8778FFFFFFFFFFFFFFF
        FFF77FF8FFFF8FF77FFFFFFFFFFFFFFFFF878F877FF778F878FFFF77FFFFFFFF
        FF778FF777777FF877FFFF77FFFFFFFFFF77FFFF7777FFFF77FFFF778FFFFFFF
        FF77FFFF7777FFFF77FFFF877FFFFFFFFF778FF777777FF877FFFFF778FFFFFF
        FF878F877FF778F878FFFFF8778FFFFFFFF77FF8FFFF8FF77FFFFFFF7778FFFF
        FFF777FFFFFFF8777FFFFFFFF87778FFFF8777778FF87777FFFFFFFFFF877777
        777777777777777FFFFFFFFFFFF8777777778FF877778FFFFFFFFFFFFF87778F
        F87778FFFFFFFFFFFFFFFFFFFF778FFFFFF877FFFFFFFFFFFFFFFFFFF877FFFF
        FFFF778FFFFFFFFFFFFFFFFFF778FFFFFFFF877FFFFFFFFFFFFFFFFFF77FFFFF
        FFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFFFFFFFFFFFFFFFF778FFFF
        FFFF877FFFFFFFFFFFFFFFFFF877FFFFFFFF778FFFFFFFFFFFFFFFFFFF778FFF
        FFF877FFFFFFFFFFFFFFFFFFFF87778FF87778FFFFFFFFFFFFFFFFFFFFF87777
        77778FFFFFFFFFFFFFFFFFFFFFFFF877778FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Visible = False
      OnClick = btnLogoutClick
      ExplicitLeft = 816
      ExplicitTop = -3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 82
    Width = 1016
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label3: TLabel
      Left = 37
      Top = 24
      Width = 203
      Height = 24
      Caption = 'Aplicativo das tapiocas'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 85
      Top = 54
      Width = 48
      Height = 16
      Caption = 'Principal'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 776
      Top = 14
      Width = 84
      Height = 25
      Caption = 'Usu'#225'rio: '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblNomeUsuario: TLabel
      Left = 776
      Top = 45
      Width = 97
      Height = 25
      Caption = 'Convidado'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnPerfil: TSpeedButton
      Left = 920
      Top = 0
      Width = 96
      Height = 89
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Perfil'
      Flat = True
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        04000000000000020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77FFFF
        FFFFFFFFFFFF77FFFFFFFFFFFF77FFFFFFFFFFFFFFFF77FFFFFFFFFFFF778FFF
        FFFFFFFFFFF877FFFFFFFFFFFF877FFFFFFFFFFFFFF778FFFFFFFFFFFFF778FF
        FFFFFFFFFF877FFFFFFFFFFFFFF8778FFFFFFFFFF8778FFFFFFFFFFFFFFF7778
        FFFFFFFF8777FFFFFFFFFFFFFFFFF87778FFFF87778FFFFFFFFFFFFFFFFFFF87
        7777777778FFFFFFFFFFFFFFFFFFFFF8777777778FFFFFFFFFFFFFFFFFFFFF87
        778FF87778FFFFFFFFFFFFFFFFFFFF778FFFFFF877FFFFFFFFFFFFFFFFFFF877
        FFFFFFFF778FFFFFFFFFFFFFFFFFF778FFFFFFFF877FFFFFFFFFFFFFFFFFF77F
        FFFFFFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFFFFFFFFFFFFFFFF778
        FFFFFFFF877FFFFFFFFFFFFFFFFFF877FFFFFFFF778FFFFFFFFFFFFFFFFFFF77
        8FFFFFF877FFFFFFFFFFFFFFFFFFFF87778FF87778FFFFFFFFFFFFFFFFFFFFF8
        777777778FFFFFFFFFFFFFFFFFFFFFFFF877778FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnPerfilClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 171
    Width = 1016
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 20
      Top = 10
      Width = 976
      Height = 29
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 20
      Margins.Bottom = 10
      Align = alClient
      BevelOuter = bvNone
      Color = clBtnHighlight
      ParentBackground = False
      TabOrder = 0
      object Label5: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 5
        Width = 34
        Height = 24
        Margins.Top = 5
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taCenter
        Caption = 'Filtro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 16
      end
      object btnShowCarrinho: TSpeedButton
        Tag = -1
        Left = 856
        Top = 0
        Width = 120
        Height = 29
        Align = alRight
        Caption = 'Carrinho'
        Flat = True
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          04000000000000020000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8778FFFFF8778FFFFFFFFFFFFFFFFFF87
          7778FFF877778FFFFFFFFFFFFFFFFF778877FFF778877FFFFFFFFFFFFFFFFF77
          8877FFF778877FFFFFFFFFFFFFFFFF877778FFF877778FFFFFFFFFFFFFFFFFF8
          778FFFFF8778FFFFFFFFFFFFFFFFFF877777777777778FFFFFFFFFFFFFFFFF77
          7777777777777FFFFFFFFFFFFFFFF877FFFFFFFFFFF778FFFFFFFFFFFFFFF778
          FFFFFFFFFFF877FFFFFFFFFFFFFFF77FFFFFFFFFFFFF77FFFFFFFFFFFFFFF77F
          FFFFFFFFFFFF778FFFFFFFFFFFFF877FFFFFFFFFFFFF878FFFFFFFFFFFFF778F
          FFFFFFFFFFFF877FFFFFFFFFFFFF77FFFFFFFFFFFFFFF77FFFFFFFFFFFFF77F7
          7777777777777778FFFFFFFFFFF877F77777777777777777FFFFFFFFFFF778FF
          FFFFFFFFFFFFFFFFFFFFFFFF77777FFFFFFFFFFFFFFFFFFFFFFFFFFF77778FFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnShowCarrinhoClick
      end
      object SpeedButton2: TSpeedButton
        Tag = -1
        Left = 177
        Top = 0
        Width = 88
        Height = 29
        Caption = 'Procurar'
        Flat = True
      end
      object Edit1: TEdit
        Left = 44
        Top = 7
        Width = 130
        Height = 30
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        TextHint = 'Sabor'
      end
    end
  end
  object pnCarrinho: TPanel
    Left = 392
    Top = 125
    Width = 317
    Height = 440
    TabOrder = 5
    Visible = False
    object cgCarrinho: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 315
      Height = 399
      PanelBorder = gbNone
      PanelHeight = 57
      PanelWidth = 298
      TabOrder = 0
      RowCount = 7
      object pnItemCarrinho: TPanel
        Left = 0
        Top = 0
        Width = 298
        Height = 57
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        BevelOuter = bvNone
        Color = clBtnHighlight
        ParentBackground = False
        TabOrder = 0
        object Shape4: TShape
          Left = 248
          Top = 5
          Width = 47
          Height = 46
          Brush.Color = clRed
          Pen.Style = psClear
          Shape = stCircle
        end
        object Shape7: TShape
          Left = 259
          Top = 24
          Width = 23
          Height = 7
          Pen.Style = psClear
        end
        object btnRemoveCarrinho: TShape
          Left = 240
          Top = 3
          Width = 58
          Height = 50
          Brush.Style = bsClear
          Pen.Style = psClear
        end
        object lblProdAddCarrinho: TLabel
          Left = 16
          Top = 18
          Width = 133
          Height = 18
          Caption = 'Tapioca de frango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object Voltar: TButton
      Left = 132
      Top = 406
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 1
      OnClick = VoltarClick
    end
    object Button2: TButton
      Left = 228
      Top = 406
      Width = 75
      Height = 25
      Caption = 'Comprar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object qrVitrine: TFDQuery
    Connection = dmDB.ConDB
    Left = 278
    Top = 241
  end
  object dsVitrine: TDataSource
    DataSet = qrVitrine
    Left = 336
    Top = 240
  end
end
