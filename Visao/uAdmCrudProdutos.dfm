inherited frmAdmCrudProdutos: TfrmAdmCrudProdutos
  Caption = 'CRUD de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 384
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  inherited Panel2: TPanel
    inherited pcPrincipal: TPageControl
      ActivePage = tsAba2
      inherited tsAba1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited DBCtrlGrid1: TDBCtrlGrid
          Height = 493
          PanelBorder = gbRaised
          OnPaintPanel = DBCtrlGrid1PaintPanel
          inherited Panel3: TPanel
            inherited Label8: TLabel
              Left = 304
              ExplicitLeft = 304
            end
            object Label5: TLabel
              Left = 247
              Top = 8
              Width = 52
              Height = 24
              Caption = 'Tipo: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblTipoProduto: TLabel
              Left = 305
              Top = 12
              Width = 5
              Height = 19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
      inherited tsAba2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited panelTabSheet2: TPanel
          inherited Label10: TLabel
            Width = 186
            Caption = 'Adicionar Produto'
            ExplicitWidth = 186
          end
          object Label7: TLabel
            Left = 16
            Top = 72
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label9: TLabel
            Left = 16
            Top = 128
            Width = 31
            Height = 13
            Caption = 'Pre'#231'o:'
          end
          object Label13: TLabel
            Left = 272
            Top = 128
            Width = 24
            Height = 13
            Caption = 'Tipo:'
          end
          object edtAddProdutoNome: TEdit
            Left = 16
            Top = 91
            Width = 401
            Height = 21
            TabOrder = 0
          end
          object edtAddProdutoPreco: TEdit
            Left = 16
            Top = 147
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object cbAddProdutoTipo: TComboBox
            Left = 272
            Top = 147
            Width = 145
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'Comida'
            Items.Strings = (
              'Comida'
              'Bebida')
          end
          object btnAddProdutoCadastrar: TButton
            Left = 345
            Top = 220
            Width = 75
            Height = 25
            Caption = 'Cadastrar'
            TabOrder = 3
          end
          object btnAddProdutoCancelar: TButton
            Left = 239
            Top = 220
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 4
          end
        end
      end
      inherited tsAba3: TTabSheet
        inherited panelTabSheet3: TPanel
          inherited Label11: TLabel
            Width = 151
            Caption = 'Editar produto'
            ExplicitWidth = 151
          end
          object Label14: TLabel
            Left = 16
            Top = 60
            Width = 129
            Height = 13
            Caption = 'Escolha qual deseja editar:'
          end
          object Label15: TLabel
            Left = 16
            Top = 112
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label16: TLabel
            Left = 16
            Top = 168
            Width = 31
            Height = 13
            Caption = 'Pre'#231'o:'
          end
          object Label18: TLabel
            Left = 296
            Top = 168
            Width = 56
            Height = 13
            Caption = 'Quantidade'
          end
          object Button1: TButton
            Left = 353
            Top = 251
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 0
          end
          object Button2: TButton
            Left = 247
            Top = 251
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 1
          end
          object ComboBox1: TComboBox
            Left = 16
            Top = 79
            Width = 145
            Height = 21
            Style = csDropDownList
            TabOrder = 2
            Items.Strings = (
              'Comida'
              'Bebida')
          end
          object Edit1: TEdit
            Left = 16
            Top = 131
            Width = 401
            Height = 21
            TabOrder = 3
          end
          object Edit2: TEdit
            Left = 16
            Top = 187
            Width = 121
            Height = 21
            TabOrder = 4
          end
          object Edit3: TEdit
            Left = 296
            Top = 187
            Width = 121
            Height = 21
            TabOrder = 5
          end
        end
      end
      inherited tsAba4: TTabSheet
        inherited panelTabSheet4: TPanel
          inherited Label12: TLabel
            Top = 22
            Width = 185
            Caption = 'Remover produto'
            ExplicitTop = 22
            ExplicitWidth = 185
          end
          object Label17: TLabel
            Left = 16
            Top = 72
            Width = 141
            Height = 13
            Caption = 'Escolha qual deseja remover:'
          end
          object Button3: TButton
            Left = 121
            Top = 146
            Width = 75
            Height = 25
            Caption = 'Remover'
            TabOrder = 0
          end
          object Button4: TButton
            Left = 15
            Top = 146
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 1
          end
          object ComboBox2: TComboBox
            Left = 16
            Top = 91
            Width = 180
            Height = 21
            Style = csDropDownList
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited SplitView1: TSplitView
    inherited cbMenu: TCategoryButtons
      Categories = <
        item
          Color = clNone
          Collapsed = False
          Items = <
            item
              Caption = 'Voltar'
              ImageIndex = 0
              OnClick = cbMenuCategories0Items0Click
            end
            item
            end
            item
            end
            item
              Caption = 'Visualizar produto'
              ImageIndex = 1
              OnClick = cbMenuCategories0Items3Click
            end
            item
              Caption = 'Adicionar produto'
              ImageIndex = 2
              OnClick = cbMenuCategories0Items4Click
            end
            item
              Caption = 'Editar produto'
              ImageIndex = 3
              OnClick = cbMenuCategories0Items5Click
            end
            item
              Caption = 'Remover produto'
              ImageIndex = 4
              OnClick = cbMenuCategories0Items6Click
            end>
        end>
    end
    inherited Panel1: TPanel
      inherited Label1: TLabel
        Width = 50
        Caption = 'Buscar'
        ExplicitWidth = 50
      end
    end
  end
  inherited imPrincipal: TImageList
    Left = 24
    Bitmap = {
      494C010105004000D00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDF005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B00888888000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008787
      87005F5F5F00F3F3F30000000000000000000000000000000000A4A4A4005B5B
      5B00F5F5F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A3A3006D6D
      6D0000000000000000000000000000000000000000000000000000000000ECEC
      EC005B5B5B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9008989890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B4B4B400999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300F7F7F7000000
      0000000000005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000085858500CDCDCD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600676767000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F5005B5B5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5C00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      000061616100DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA005B5B
      5B00E1E1E1000000000000000000000000000000000000000000000000007070
      7000828282000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC005C5C5C0069696900CCCCCC00F1F1F100E3E3E3009B9B9B005B5B5B00A4A4
      A400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600828282006767670073737300B1B1B100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5B005B5B
      5B005B5B5B005B5B5B005B5B5B0000000000000000005B5B5B005B5B5B005B5B
      5B005B5B5B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDFDF005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B00888888000000
      00000000000000000000000000000000000000000000ECECEC0065656500A7A7
      A700E9E9E9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5B000000
      000000000000000000005B5B5B0000000000000000005B5B5B00000000000000
      00005B5B5B0000000000000000000000000000000000000000005B5B5B005B5B
      5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B
      5B005B5B5B000000000000000000000000000000000000000000000000008787
      87005F5F5F00F3F3F30000000000000000000000000000000000A4A4A4005B5B
      5B00F5F5F50000000000000000000000000000000000000000005B5B5B00A9A9
      A900636363005D5D5D0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5B000000
      000000000000000000005B5B5B0000000000000000005B5B5B00000000000000
      00005B5B5B0000000000000000000000000000000000000000005B5B5B000000
      000000000000000000000000000000000000000000005B5B5B005B5B5B005B5B
      5B005B5B5B000000000000000000000000000000000000000000A3A3A3006D6D
      6D0000000000000000000000000000000000000000000000000000000000ECEC
      EC005B5B5B0000000000000000000000000000000000000000005B5B5B000000
      00005B5B5B00989898005F5F5F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5B000000
      000000000000000000005B5B5B0000000000000000005B5B5B00000000000000
      00005B5B5B0000000000000000000000000000000000000000005B5B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5B0000000000000000000000000000000000000000005B5B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9008989890000000000000000000000000000000000696969005B5B
      5B00C6C6C60000000000A6A6A6005E5E5E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5B000000
      000000000000000000005B5B5B0000000000000000005B5B5B00000000000000
      00005B5B5B0000000000000000000000000000000000000000005B5B5B000000
      000000000000000000000000000000000000000000005B5B5B00000000005B5B
      5B005B5B5B0000000000000000000000000000000000B4B4B400999999000000
      00000000000000000000000000005B5B5B000000000000000000000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000005D5D
      5D00ADADAD0000000000000000009D9D9D005F5F5F0000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC005B5B5B000000
      000000000000000000005B5B5B005B5B5B005B5B5B005B5B5B00000000000000
      00005B5B5B00F1F1F100000000000000000000000000000000005B5B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5B000000000000000000000000000000000073737300E7E7E7000000
      00000000000000000000000000005B5B5B000000000000000000000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      00005D5D5D00ADADAD0000000000000000009D9D9D005E5E5E00000000000000
      00000000000000000000000000000000000000000000737373005B5B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5B005B5B5B00EEEEEE000000000000000000000000005B5B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5B000000000000000000000000000000000063636300F7F7F7000000
      0000000000005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B00000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      0000000000005D5D5D00ADADAD0000000000000000009D9D9D005E5E5E000000
      0000000000000000000000000000000000000000000000000000737373007D7D
      7D0000000000000000000000000000000000000000000000000000000000F5F5
      F5005B5B5B00EEEEEE00000000000000000000000000000000005B5B5B000000
      000000000000000000005B5B5B005B5B5B005B5B5B0085858500000000000000
      00005B5B5B000000000000000000000000000000000085858500CDCDCD000000
      00000000000000000000000000005B5B5B000000000000000000000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      000000000000000000005D5D5D00ADADAD0000000000000000009D9D9D005E5E
      5E00000000000000000000000000000000000000000000000000000000007373
      73007D7D7D000000000000000000000000000000000000000000F5F5F5005B5B
      5B00EEEEEE0000000000000000000000000000000000000000005B5B5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5B0000000000000000000000000000000000E6E6E600676767000000
      00000000000000000000000000005B5B5B000000000000000000000000000000
      0000F5F5F5005B5B5B0000000000000000000000000000000000000000000000
      00000000000000000000000000005E5E5E00A7A7A70000000000000000006969
      69005D5D5D000000000000000000000000000000000000000000000000000000
      0000737373007D7D7D00000000000000000000000000F5F5F5005B5B5B00EEEE
      EE00000000000000000000000000000000000000000000000000797979005B5B
      5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B
      5B005B5B5B0000000000000000000000000000000000000000005C5C5C00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      000061616100DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E5E5E00A7A7A7007C7C7C007373
      73009F9F9F008585850000000000000000000000000000000000000000000000
      000000000000737373007D7D7D0000000000F5F5F5005B5B5B00EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000005B5B
      5B00E1E1E1000000000000000000000000000000000000000000000000006060
      6000C6C6C6000000000000000000000000000000000000000000FAFAFA005B5B
      5B00E1E1E1000000000000000000000000000000000000000000000000007070
      7000828282000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005D5D5D00666666000000
      0000EFEFEF006565650000000000000000000000000000000000000000000000
      0000000000000000000075757500787878005B5B5B00F0F0F000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F9005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B005B5B5B007979
      790000000000000000000000000000000000000000000000000000000000FCFC
      FC005C5C5C0069696900CCCCCC00F1F1F100E3E3E3009B9B9B005B5B5B00A4A4
      A400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E5E5E005F5F
      5F005B5B5B00EFEFEF0000000000000000000000000000000000000000000000
      000000000000000000000000000072727200EEEEEE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600828282006767670073737300B1B1B100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      F01F000000000000E3C7000000000000CFE7000000000000DFF3000000000000
      9FFB0000000000009FFB000000000000981B0000000000009FFB000000000000
      9FF3000000000000CFF3000000000000C7E7000000000000E00F000000000000
      F83F000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C187FFFFF01F87FFDDB7C007E3C7C3FFDDB7DF87CFE7D1FFDDB7DFF7DFF3C4FF
      DDB7DFA79EFBE67F9C33DFF79EFBF33F9FF1DFF7983BF99FCFE3DC379EFBFCCF
      E7C7DFF79EF3FE67F38FC007CFF3FF03F91FE7E7C7E7FF93FC3FE00FE00FFFC3
      FE7FFFFFF83FFFEFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'Select  '
      '  ID,'
      '  NOME,'
      '  PRECO,'
      '  TIPO_PRODUTO,'
      '  QUANTIDADE_ESTOQUE'
      'from '
      '  Produtos')
    object qrDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qrDadosPRECO: TCurrencyField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Required = True
    end
    object qrDadosQUANTIDADE_ESTOQUE: TIntegerField
      FieldName = 'QUANTIDADE_ESTOQUE'
      Origin = 'QUANTIDADE_ESTOQUE'
      Required = True
    end
    object qrDadosTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Required = True
    end
    object qrDadosTIPO_PRODUTO_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO_PRODUTO_LK'
      LookupDataSet = qrTipoCalc
      LookupKeyFields = 'ID'
      LookupResultField = 'TIPO_PRODUTO'
      KeyFields = 'TIPO_PRODUTO'
      Size = 30
      Lookup = True
    end
  end
  object qrTipoCalc: TFDQuery
    Connection = dmDB.ConDB
    SQL.Strings = (
      'select * from TIPO_PRODUTO;')
    Left = 152
    Top = 472
    object qrTipoCalcID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrTipoCalcTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Required = True
      Size = 50
    end
  end
end
