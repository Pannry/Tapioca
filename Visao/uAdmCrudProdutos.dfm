inherited frmAdmCrudProdutos: TfrmAdmCrudProdutos
  Caption = 'CRUD de Produtos'
  OnClose = FormClose
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
      ExplicitLeft = -184
      ExplicitTop = 520
      inherited tsAba1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited DBCtrlGrid1: TDBCtrlGrid
          Height = 493
          PanelBorder = gbRaised
          OnPaintPanel = DBCtrlGrid1PaintPanel
          ExplicitLeft = -96
          ExplicitTop = 3
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
            Top = 92
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label9: TLabel
            Left = 16
            Top = 252
            Width = 31
            Height = 13
            Caption = 'Pre'#231'o:'
          end
          object Label13: TLabel
            Left = 272
            Top = 252
            Width = 24
            Height = 13
            Caption = 'Tipo:'
          end
          object Label19: TLabel
            Left = 16
            Top = 138
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object lblFbAddProd: TLabel
            Left = 17
            Top = 58
            Width = 5
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtAddProdutoNome: TEdit
            Left = 16
            Top = 111
            Width = 401
            Height = 21
            TabOrder = 0
          end
          object edtAddProdutoPreco: TEdit
            Left = 16
            Top = 271
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object cbAddProdutoTipo: TComboBox
            Left = 272
            Top = 271
            Width = 145
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 3
            Text = 'Comida'
            Items.Strings = (
              'Comida'
              'Bebida')
          end
          object btnAddProdutoCadastrar: TButton
            Left = 345
            Top = 344
            Width = 75
            Height = 25
            Caption = 'Cadastrar'
            TabOrder = 4
            OnClick = btnAddProdutoCadastrarClick
          end
          object btnAddProdutoCancelar: TButton
            Left = 239
            Top = 344
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 5
            OnClick = cbMenuCategories0Items3Click
          end
          object mmDescricao: TMemo
            Left = 17
            Top = 157
            Width = 400
            Height = 89
            TabOrder = 1
          end
        end
      end
      inherited tsAba3: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited panelTabSheet3: TPanel
          ExplicitLeft = 3
          ExplicitTop = 8
          inherited Label11: TLabel
            Width = 151
            Caption = 'Editar produto'
            ExplicitWidth = 151
          end
          object Label14: TLabel
            Left = 16
            Top = 101
            Width = 129
            Height = 13
            Caption = 'Escolha qual deseja editar:'
          end
          object Label99: TLabel
            Left = 16
            Top = 153
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
          object Label16: TLabel
            Left = 16
            Top = 252
            Width = 31
            Height = 25
            Caption = 'Pre'#231'o:'
          end
          object Label18: TLabel
            Left = 265
            Top = 252
            Width = 56
            Height = 25
            Caption = 'Quantidade'
          end
          object lblFbEditProd: TLabel
            Left = 16
            Top = 66
            Width = 5
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 265
            Top = 101
            Width = 24
            Height = 13
            Caption = 'Tipo:'
          end
          object btnEditarProdutoCadastrar: TButton
            Left = 342
            Top = 324
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 4
            OnClick = btnEditarProdutoCadastrarClick
          end
          object Button2: TButton
            Left = 246
            Top = 324
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 5
            OnClick = cbMenuCategories0Items3Click
          end
          object mmEditDescProd: TDBMemo
            Left = 16
            Top = 172
            Width = 401
            Height = 70
            DataField = 'DESCRICAO'
            DataSource = dsDados
            TabOrder = 1
          end
          object edtEditPriceProd: TDBEdit
            Left = 16
            Top = 271
            Width = 151
            Height = 21
            DataField = 'PRECO'
            DataSource = dsDados
            TabOrder = 2
          end
          object edtEditQtdProd: TDBEdit
            Left = 265
            Top = 271
            Width = 152
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = dsDados
            TabOrder = 3
          end
          object LkCbEditProd: TDBLookupComboBox
            Left = 16
            Top = 120
            Width = 145
            Height = 21
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsDados
            TabOrder = 0
          end
          object edtEditTypeProd: TDBEdit
            Left = 265
            Top = 120
            Width = 152
            Height = 21
            DataField = 'TIPO_PRODUTO'
            DataSource = dsDados
            Enabled = False
            ReadOnly = True
            TabOrder = 6
          end
        end
      end
      inherited tsAba4: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited panelTabSheet4: TPanel
          ExplicitLeft = -16
          ExplicitTop = 312
          inherited Label12: TLabel
            Top = 22
            Width = 185
            Caption = 'Remover produto'
            ExplicitTop = 22
            ExplicitWidth = 185
          end
          object Label17: TLabel
            Left = 16
            Top = 93
            Width = 132
            Height = 13
            Caption = 'Escolha qual deseja excluir:'
          end
          object lblFbRemProd: TLabel
            Left = 16
            Top = 62
            Width = 5
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnRemoverProdutoCadastrar: TButton
            Left = 121
            Top = 146
            Width = 75
            Height = 25
            Caption = 'Remover'
            TabOrder = 1
            OnClick = btnRemoverProdutoCadastrarClick
          end
          object Button4: TButton
            Left = 15
            Top = 146
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 2
            OnClick = cbMenuCategories0Items3Click
          end
          object lkCbRemProd: TDBLookupComboBox
            Left = 16
            Top = 112
            Width = 180
            Height = 21
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsDados
            TabOrder = 0
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
      494C010105004000F00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      Size = 100
    end
    object qrDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 1000
    end
    object qrDadosTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Required = True
    end
    object qrDadosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrDadosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
  end
end
