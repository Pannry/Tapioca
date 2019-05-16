inherited frmAdmCrudUsuarios: TfrmAdmCrudUsuarios
  ActiveControl = pcPrincipal
  Caption = 'CRUD de usu'#225'rios'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 467
    Top = 54
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel2: TPanel
    inherited pcPrincipal: TPageControl
      ActivePage = tsAba3
      inherited tsAba1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited DBCtrlGrid1: TDBCtrlGrid
          Height = 493
          OnPaintPanel = DBCtrlGrid1PaintPanel
          inherited Panel3: TPanel
            inherited Label2: TLabel
              Width = 55
              Caption = 'Login:'
              ExplicitWidth = 55
            end
            inherited Label4: TLabel
              Left = 254
              Top = 4
              Width = 85
              Caption = 'Telefone:'
              ExplicitLeft = 254
              ExplicitTop = 4
              ExplicitWidth = 85
            end
            inherited Label8: TLabel
              Left = 404
              Top = 43
              Width = 46
              Caption = 'Tipo:'
              ExplicitLeft = 404
              ExplicitTop = 43
              ExplicitWidth = 46
            end
            inherited Label3: TLabel
              Left = 224
              Top = 43
              Width = 40
              Caption = 'CPF:'
              ExplicitLeft = 224
              ExplicitTop = 43
              ExplicitWidth = 40
            end
            object Label5: TLabel
              Left = 6
              Top = 43
              Width = 59
              Height = 24
              Caption = 'Nome:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblLoginUsuario: TLabel
              Left = 70
              Top = 9
              Width = 5
              Height = 19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblCPFUsuario: TLabel
              Left = 269
              Top = 45
              Width = 5
              Height = 19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblTelefoneUsuario: TLabel
              Left = 348
              Top = 9
              Width = 5
              Height = 19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblTipoUsuario: TLabel
              Left = 459
              Top = 46
              Width = 5
              Height = 19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblNomeUsuario: TLabel
              Left = 75
              Top = 47
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
            Width = 181
            Caption = 'Adicionar usu'#225'rio'
            ExplicitWidth = 181
          end
          object Label13: TLabel
            Left = 248
            Top = 244
            Width = 24
            Height = 13
            Caption = 'Tipo:'
          end
          object Label9: TLabel
            Left = 17
            Top = 135
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label14: TLabel
            Left = 16
            Top = 189
            Width = 46
            Height = 13
            Caption = 'Telefone:'
          end
          object lblFbAddUser: TLabel
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
          object Label7: TLabel
            Left = 248
            Top = 189
            Width = 23
            Height = 13
            Caption = 'CPF:'
          end
          object Label15: TLabel
            Left = 16
            Top = 244
            Width = 34
            Height = 13
            Caption = 'Senha:'
          end
          object Label16: TLabel
            Left = 17
            Top = 85
            Width = 29
            Height = 13
            Caption = 'Login:'
          end
          object btnAddUsuarioCadastrar: TButton
            Left = 345
            Top = 351
            Width = 75
            Height = 25
            Caption = 'Cadastrar'
            TabOrder = 0
            OnClick = btnAddUsuarioCadastrarClick
          end
          object btnAddUsuarioCancelar: TButton
            Left = 239
            Top = 351
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 1
            OnClick = cbMenuCategories0Items3Click
          end
          object cbAddUsuarioTipo: TComboBox
            Left = 248
            Top = 263
            Width = 169
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'Cliente'
            Items.Strings = (
              'Cliente'
              'Administrador')
          end
          object edtAddUsuarioNome: TEdit
            Left = 17
            Top = 154
            Width = 401
            Height = 21
            TabOrder = 3
          end
          object edtAddUsuarioTelefone: TEdit
            Left = 16
            Top = 208
            Width = 161
            Height = 21
            TabOrder = 4
          end
          object edtAddUsuarioCpf: TEdit
            Left = 248
            Top = 208
            Width = 169
            Height = 21
            TabOrder = 5
          end
          object edtAddUsuarioSenha: TEdit
            Left = 16
            Top = 263
            Width = 161
            Height = 21
            TabOrder = 6
          end
          object edtAddUsuarioLogin: TEdit
            Left = 17
            Top = 104
            Width = 401
            Height = 21
            TabOrder = 7
          end
        end
      end
      inherited tsAba3: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited panelTabSheet3: TPanel
          inherited Label11: TLabel
            Left = 18
            Top = 16
            Width = 146
            Caption = 'Editar usu'#225'rio'
            ExplicitLeft = 18
            ExplicitTop = 16
            ExplicitWidth = 146
          end
          object Label31: TLabel
            Left = 250
            Top = 248
            Width = 24
            Height = 13
            Caption = 'Tipo:'
          end
          object Label32: TLabel
            Left = 18
            Top = 193
            Width = 46
            Height = 13
            Caption = 'Telefone:'
          end
          object Label33: TLabel
            Left = 18
            Top = 248
            Width = 34
            Height = 13
            Caption = 'Senha:'
          end
          object Label34: TLabel
            Left = 19
            Top = 142
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label35: TLabel
            Left = 250
            Top = 193
            Width = 23
            Height = 13
            Caption = 'CPF:'
          end
          object Label36: TLabel
            Left = 19
            Top = 96
            Width = 29
            Height = 13
            Caption = 'Login:'
          end
          object lblFbEditUser: TLabel
            Left = 19
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
          object lkCbEditLoginUser: TDBLookupComboBox
            Left = 19
            Top = 115
            Width = 399
            Height = 21
            KeyField = 'ID'
            ListField = 'LOGIN'
            ListSource = dsDados
            TabOrder = 0
          end
          object edtEditSenhaUser: TDBEdit
            Left = 19
            Top = 267
            Width = 158
            Height = 21
            DataField = 'SENHA'
            DataSource = dsDados
            TabOrder = 1
          end
          object edtEditCPFUser: TDBEdit
            Left = 250
            Top = 215
            Width = 167
            Height = 21
            DataField = 'CPF'
            DataSource = dsDados
            TabOrder = 2
          end
          object edtEditTelefoneUser: TDBEdit
            Left = 18
            Top = 215
            Width = 159
            Height = 21
            DataField = 'TELEFONE'
            DataSource = dsDados
            TabOrder = 3
          end
          object edtEditNomeUser: TDBEdit
            Left = 19
            Top = 161
            Width = 399
            Height = 21
            DataField = 'NOME'
            DataSource = dsDados
            TabOrder = 4
          end
          object edtEditTipoUser: TDBEdit
            Left = 250
            Top = 267
            Width = 167
            Height = 21
            DataField = 'TIPO'
            DataSource = dsDados
            TabOrder = 5
          end
          object btnEditUser: TButton
            Left = 344
            Top = 320
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 6
            OnClick = btnEditUserClick
          end
          object Button2: TButton
            Left = 250
            Top = 320
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 7
            OnClick = Button2Click
          end
        end
      end
      inherited tsAba4: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 516
        ExplicitHeight = 493
        inherited panelTabSheet4: TPanel
          inherited Label12: TLabel
            Width = 180
            Caption = 'Remover usu'#225'rio'
            ExplicitWidth = 180
          end
          object Label17: TLabel
            Left = 16
            Top = 93
            Width = 132
            Height = 13
            Caption = 'Escolha qual deseja excluir:'
          end
          object lblFbRemUser: TLabel
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
          object btnRemUser: TButton
            Left = 121
            Top = 146
            Width = 75
            Height = 25
            Caption = 'Remover'
            TabOrder = 0
            OnClick = btnRemUserClick
          end
          object Button4: TButton
            Left = 15
            Top = 146
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 1
            OnClick = cbMenuCategories0Items3Click
          end
          object lkCbRemUser: TDBLookupComboBox
            Left = 16
            Top = 112
            Width = 180
            Height = 21
            KeyField = 'ID'
            ListField = 'LOGIN'
            ListSource = dsDados
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
              Caption = 'Visualizar usu'#225'rio'
              ImageIndex = 1
              OnClick = cbMenuCategories0Items3Click
            end
            item
              Caption = 'Adicionar usu'#225'rio'
              ImageIndex = 2
              OnClick = cbMenuCategories0Items4Click
            end
            item
              Caption = 'Editar usu'#225'rio'
              ImageIndex = 3
              OnClick = cbMenuCategories0Items5Click
            end
            item
              Caption = 'Remover usu'#225'rio'
              ImageIndex = 4
              OnClick = cbMenuCategories0Items6Click
            end>
        end>
    end
  end
end
