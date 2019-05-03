object frmCardapio: TfrmCardapio
  Left = 0
  Top = 0
  Caption = 'Cardapio'
  ClientHeight = 537
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 537
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 672
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 4194304
      ParentBackground = False
      TabOrder = 0
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
        Left = 472
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
      Top = 130
      Width = 672
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clBtnHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 8
      ExplicitTop = 158
      object btnLogin: TSpeedButton
        Left = 553
        Top = 0
        Width = 119
        Height = 41
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = 'Fechar'
        Flat = True
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          04000000000000020000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF7777777777777777777777FFFFFFFFFF7777777
          777777777777777FFFFFFFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFFF
          FFFFFFFFFFFFF77FFFFFFFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFF8
          FFFFFFFF8FFFF77FFFFFFFFFF77FFF877FFFFFF778FFF77FFFFFFFFFF77FFFF7
          77FFFF777FFFF77FFFFFFFFFF77FFFFF777FF777FFFFF77FFFFFFFFFF77FFFFF
          F777777FFFFFF77FFFFFFFFFF77FFFFFFF7777FFFFFFF77FFFFFFFFFF77FFFFF
          FF7777FFFFFFF77FFFFFFFFFF77FFFFFF777777FFFFFF77FFFFFFFFFF77FFFFF
          777FF777FFFFF77FFFFFFFFFF77FFFF777FFFF777FFFF77FFFFFFFFFF77FFF87
          7FFFFFF778FFF77FFFFFFFFFF77FFFF8FFFFFFFF8FFFF77FFFFFFFFFF77FFFFF
          FFFFFFFFFFFFF77FFFFFFFFFF77FFFFFFFFFFFFFFFFFF77FFFFFFFFFF77FFFFF
          FFFFFFFFFFFFF77FFFFFFFFFF7777777777777777777777FFFFFFFFFF7777777
          777777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnLoginClick
        ExplicitLeft = 358
        ExplicitTop = -3
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 41
      Width = 672
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 0
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
    end
    object ScrBoxCardapio: TScrollBox
      Left = 0
      Top = 171
      Width = 672
      Height = 366
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 3
    end
  end
end
