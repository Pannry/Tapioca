unit Main;

interface

uses
  UsuarioControle, UsuarioLogadoSingleton,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.DBCGrids;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Shape1: TShape;
    lblVersion: TLabel;
    Panel3: TPanel;
    btnAdministracao: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnCardapio: TSpeedButton;
    btnTelaPrincipal: TSpeedButton;
    btnLogin: TSpeedButton;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    Panel7: TPanel;
    Label5: TLabel;
    btnShowCarrinho: TSpeedButton;
    btnCadastro: TSpeedButton;
    Label2: TLabel;
    lblNomeUsuario: TLabel;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Panel8: TPanel;
    Shape2: TShape;
    DBCtrlGrid1: TDBCtrlGrid;
    btnLogout: TSpeedButton;
    btnPerfil: TSpeedButton;
    procedure btnCardapioClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnAdministracaoClick(Sender: TObject);
    procedure btnPerfilClick(Sender: TObject);
  private
    FPermissao: Integer;
    LogedUser: TUsuarioLogadoSingleton;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{ TODO 0 -oThales -cCardapio: exemplo de cardapios: https://aquilafastfood.com.br/cardapio/ }

{ TODO 0 -oThales -cCardapio: Refazer tela/BD de Produtos (O banco está oK) }

{ TODO 2 -oThales -cProdutos : Adicionar CRUD de produtos }
{ TODO 2 -oThales -cProdutos : Adicionar CRUD de usuarios (adm's) }
{ TODO 1 -oThales -cCarrinho : Adicionar um panel com scroll, apenas modificando a visibilidade }

uses
  uCardapio, uCrud, uAdm;

{$R *.dfm}

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  if FPermissao = 2 then
  begin
    btnAdministracao.Visible := True;
    btnRelatorios.Visible := True;
  end
  else
  begin
    btnAdministracao.Visible := False;
    btnRelatorios.Visible := False;
  end;

  if (FPermissao = 1) or (FPermissao = 2) then
  begin
    btnLogout.Visible := True;
    btnPerfil.Visible := True;
    btnLogin.Visible := False;
  end
  else
  begin
    btnLogout.Visible := False;
    btnLogin.Visible := True;
    btnPerfil.Visible := False;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;
end;

procedure TFrmPrincipal.btnCardapioClick(Sender: TObject);
begin
  frmCardapio := TfrmCardapio.Create(self);
  try
    frmCardapio.ShowModal;
  finally
    frmCardapio.Free;
  end;
end;

procedure TFrmPrincipal.btnLoginClick(Sender: TObject);
begin
  frmCrud := TfrmCrud.Create(self);
  try
    frmCrud.InicialForm := 'login';
    frmCrud.ShowModal;
  finally
    frmCrud.Free;
  end;
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;
end;

procedure TFrmPrincipal.btnLogoutClick(Sender: TObject);
var
  UserCtrl: TUsuarioControle;
begin
  UserCtrl := TUsuarioControle.Create;
  try
    UserCtrl.LogoutUsuario;
    lblNomeUsuario.Caption := LogedUser.Login;
    FPermissao := LogedUser.Permissao;
  finally
    UserCtrl.Free;
  end;
end;

procedure TFrmPrincipal.btnPerfilClick(Sender: TObject);
begin
  //
end;

procedure TFrmPrincipal.btnAdministracaoClick(Sender: TObject);
begin
  frmAdm := TfrmAdm.Create(self);
  try
    frmAdm.ShowModal;
  finally
    frmAdm.Free;
  end;
end;

procedure TFrmPrincipal.btnCadastroClick(Sender: TObject);
begin
  frmCrud := TfrmCrud.Create(self);
  try
    frmCrud.InicialForm := 'signup';
    frmCrud.ShowModal;
  finally
    frmCrud.Free;
  end;
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;
end;

end.
