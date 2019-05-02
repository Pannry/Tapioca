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
    procedure btnCardapioClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    FPermissao: Integer;
    LogedUser: TUsuarioLogadoSingleton;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{ TODO : Botoes Administração e relatorio aparecem apenas para os admin }
{ TODO : exemplo de cardapios: https://aquilafastfood.com.br/cardapio/ }
{ TODO : Criar uma variavel global nomeUsuario para identificar que existe um usuario logado }
{ TODO : Usar panel como botao no ctrlGrid }
{ TODO : Logout }

uses
  uCardapio, uCrud;

{$R *.dfm}

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  if FPermissao = 1 then
  begin
    btnAdministracao.Visible := True;
    btnRelatorios.Visible := True;
  end
  else
  begin
    btnAdministracao.Visible := False;
    btnRelatorios.Visible := False;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
  lblNomeUsuario.Caption := LogedUser.Nome;
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
  lblNomeUsuario.Caption := LogedUser.Nome;
  FPermissao := LogedUser.Permissao;
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
  lblNomeUsuario.Caption := LogedUser.Nome;
  FPermissao := LogedUser.Permissao;
end;

end.
