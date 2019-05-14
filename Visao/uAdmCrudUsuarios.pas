unit uAdmCrudUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAdmCrudBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.ExtCtrls,
  Vcl.DBCGrids, Vcl.ComCtrls,
  Usuario, UsuarioControle, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmAdmCrudUsuarios = class(TfrmAdmCrudBase)
    Label5: TLabel;
    lblLoginUsuario: TLabel;
    lblCPFUsuario: TLabel;
    lblTelefoneUsuario: TLabel;
    lblTipoUsuario: TLabel;
    Label6: TLabel;
    lblNomeUsuario: TLabel;
    btnAddUsuarioCadastrar: TButton;
    btnAddUsuarioCancelar: TButton;
    cbAddUsuarioTipo: TComboBox;
    edtAddUsuarioNome: TEdit;
    edtAddUsuarioTelefone: TEdit;
    Label13: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    lblFbAddUser: TLabel;
    edtAddUsuarioCpf: TEdit;
    Label7: TLabel;
    edtAddUsuarioSenha: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    edtAddUsuarioLogin: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    lblFbEditUser: TLabel;
    lkCbEditLoginUser: TDBLookupComboBox;
    edtEditSenhaUser: TDBEdit;
    edtEditCPFUser: TDBEdit;
    edtEditTelefoneUser: TDBEdit;
    edtEditNomeUser: TDBEdit;
    edtEditTipoUser: TDBEdit;
    btnEditUser: TButton;
    Button2: TButton;
    btnRemUser: TButton;
    Button4: TButton;
    Label17: TLabel;
    lblFbRemUser: TLabel;
    lkCbRemUser: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbMenuCategories0Items0Click(Sender: TObject);
    procedure cbMenuCategories0Items3Click(Sender: TObject);
    procedure cbMenuCategories0Items4Click(Sender: TObject);
    procedure cbMenuCategories0Items5Click(Sender: TObject);
    procedure cbMenuCategories0Items6Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure btnAddUsuarioCadastrarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnEditUserClick(Sender: TObject);
    procedure btnRemUserClick(Sender: TObject);
  private
    User: TUsuario;
    UserControl: TUsuarioControle;
  public
    { Public declarations }
  end;

var
  frmAdmCrudUsuarios: TfrmAdmCrudUsuarios;

implementation

{$R *.dfm}

uses SystemUtils;

procedure TfrmAdmCrudUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  User := TUsuario.Create;
  UserControl := TUsuarioControle.Create;

  pcPrincipal.ActivePage := tsAba1;
  cbMenu.SelectedItem := cbMenu.Categories[0].Items[3];
  qrDados := TUsuarioControle.ListarUsuarios;
  dsDados.DataSet := qrDados;
  DBCtrlGrid1PaintPanel(DBCtrlGrid1, DBCtrlGrid1.PanelIndex);
end;

procedure TfrmAdmCrudUsuarios.Button2Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba1;
end;

procedure TfrmAdmCrudUsuarios.cbMenuCategories0Items0Click(Sender: TObject);
begin
  inherited;
  CLose;
end;

procedure TfrmAdmCrudUsuarios.cbMenuCategories0Items3Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba1;
end;

procedure TfrmAdmCrudUsuarios.cbMenuCategories0Items4Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba2;
end;

procedure TfrmAdmCrudUsuarios.cbMenuCategories0Items5Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba3;
end;

procedure TfrmAdmCrudUsuarios.cbMenuCategories0Items6Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba4;
end;

procedure TfrmAdmCrudUsuarios.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  inherited;
  try
    lblLoginUsuario.Caption := qrDados.FieldByName('LOGIN').AsString;
    lblNomeUsuario.Caption := qrDados.FieldByName('NOME').AsString;
    lblCPFUsuario.Caption := qrDados.FieldByName('CPF').AsString;
    lblTelefoneUsuario.Caption := qrDados.FieldByName('TELEFONE').AsString;
    lblTipoUsuario.Caption := qrDados.FieldByName('TIPO').AsString;
  except
    //
  end;
end;

procedure TfrmAdmCrudUsuarios.btnAddUsuarioCadastrarClick(Sender: TObject);
var
  fb: string;
begin
  inherited;

  User.Login := edtAddUsuarioLogin.Text;
  User.Nome := edtAddUsuarioNome.Text;
  User.Senha := edtAddUsuarioSenha.Text;
  User.CPF := edtAddUsuarioCpf.Text;
  User.Telefone := edtAddUsuarioTelefone.Text;
  User.TipoDeUsuario := cbAddUsuarioTipo.ItemIndex + 1;

  fb := UserControl.CriarUsuario(User);
  SuccessMensage(lblFbAddUser, fb);
  qrDados.Refresh;
  LimparEdits(self);
end;

procedure TfrmAdmCrudUsuarios.btnEditUserClick(Sender: TObject);
var
  fb: string;
begin
  inherited;
  User.Login := lkCbEditLoginUser.Text;
  User.Nome := edtEditNomeUser.Text;
  User.Senha := edtEditSenhaUser.Text;
  User.CPF := edtEditCPFUser.Text;
  User.Telefone := edtEditTelefoneUser.Text;
  User.TipoDeUsuario := StrToInt(edtEditTipoUser.Text);

  fb := UserControl.EditarUsuario(User);
  SuccessMensage(lblFbEditUser, fb);
  LimparEdits(self);
  qrDados.Refresh;
end;

procedure TfrmAdmCrudUsuarios.btnRemUserClick(Sender: TObject);
var
  fb: string;
begin
  inherited;
  User.Login := lkCbRemUser.Text;

  fb := UserControl.RemoverUsuario(User);
  SuccessMensage(lblFbRemUser, fb);
  LimparEdits(self);
  qrDados.Refresh;
end;

procedure TfrmAdmCrudUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  User.Free;
  UserControl.Free;
  inherited;
end;

end.
