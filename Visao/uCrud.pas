
unit uCrud;

interface

uses
  UsuarioControle, Usuario, UsuarioLogadoSingleton, Main,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmCrud = class(TForm)
    pnlInfo: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    pcCrud: TPageControl;
    tsCadastro: TTabSheet;
    pnlCrud: TPanel;
    btnClose1: TSpeedButton;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblFeedbackCadastro: TLabel;
    edtCadastroLogin: TEdit;
    edtCadastroSenha: TEdit;
    btnCadastroLogin: TButton;
    btnCadastroCadastro: TButton;
    tsLogin: TTabSheet;
    Label11: TLabel;
    Panel1: TPanel;
    btnClose2: TSpeedButton;
    Shape4: TShape;
    Shape5: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblfeedbackLogin: TLabel;
    edtLoginLogin: TEdit;
    edtLoginSenha: TEdit;
    btnLoginCadastro: TButton;
    btnLoginLogin: TButton;
    tsPerfil: TTabSheet;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Shape6: TShape;
    Shape7: TShape;
    Label12: TLabel;
    loginUsuario: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    btnSalvarAlteracoes: TButton;
    Label13: TLabel;
    Shape8: TShape;
    Label16: TLabel;
    Shape9: TShape;
    Label17: TLabel;
    Shape10: TShape;
    edtNome: TEdit;
    edtCPF: TEdit;
    edtTelefone: TEdit;
    lblFeedbackPerfil: TLabel;
    Label18: TLabel;
    Shape11: TShape;
    edtTipo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCadastroLoginClick(Sender: TObject);
    procedure btnLoginCadastroClick(Sender: TObject);
    procedure btnClose1Click(Sender: TObject);
    procedure btnClose2Click(Sender: TObject);
    procedure btnClose3Click(Sender: TObject);
    procedure btnCadastroCadastroClick(Sender: TObject);
    procedure btnLoginLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarAlteracoesClick(Sender: TObject);
  private
    FInicialForm: string;
    FUser: TUsuario;
    FUserControle: TUsuarioControle;
    LogedUser: TUsuarioLogadoSingleton;
  public
    property InicialForm: string read FInicialForm write FInicialForm;
  end;

var
  frmCrud: TfrmCrud;

implementation

{$R *.dfm}

uses
  SystemUtils, Notificacao;

procedure TfrmCrud.FormShow(Sender: TObject);
var
  I: Integer;
begin
  FUser := TUsuario.Create;
  FUserControle := TUsuarioControle.Create;
  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;

  for I := 0 to pcCrud.PageCount - 1 do
    pcCrud.Pages[I].TabVisible := false;

  if InicialForm  = 'login' then
    pcCrud.ActivePage := tsLogin
  else if (InicialForm  = 'perfil') then
    begin
      //Capturando os atributos do usuário logado
      edtLogin.text := LogedUser.Login;
      edtSenha.text := LogedUser.Senha;
      edtNome.text := LogedUser.Nome;
      edtCPF.text := LogedUser.CPF;
      edtTelefone.text := LogedUser.Telefone;
      if (LogedUser.Permissao = 0) then
        edtTipo.text := 'Convidado'
      else if (LogedUser.Permissao = 1) then
        edtTipo.text := 'Cliente'
      else
        edtTipo.text := 'Administrador';
      pcCrud.ActivePage := tsPerfil
    end
  else
    pcCrud.ActivePage := tsCadastro;
end;

procedure TfrmCrud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main.FrmPrincipal.Refresh;
  FUserControle.Free;
  FUser.Free;
end;

procedure TfrmCrud.btnCadastroCadastroClick(Sender: TObject);
const
  CLIENTE = 1;
var
  Feedback: string;
begin
  FUser.Login := edtCadastroLogin.Text;
  FUser.Senha := edtCadastroSenha.Text;
  FUser.TipoDeUsuario := CLIENTE;

  FUser.Nome := '';
  FUser.Telefone := '';
  FUser.CPF := '';

  FeedBack := FUserControle.VerificarSeUsuarioUnico(FUser);

  if Feedback.IsEmpty then
  begin
    Feedback := FUserControle.CriarUsuario(FUser);
    SuccessMensage(lblfeedbackLogin, Feedback);
    pcCrud.ActivePage := tsLogin;
  end
  else
    FailMensage(lblFeedbackCadastro, Feedback);
end;

procedure TfrmCrud.btnLoginLoginClick(Sender: TObject);
var
  Feedback: string;
  Notif: TNotificacao;

begin
  FUser.Login := edtLoginLogin.Text;
  FUser.Senha := edtLoginSenha.Text;

  Feedback := FUserControle.LogarUsuario(FUser);
  if Feedback.IsEmpty then
    Close;

  Notif.UsuarioID := LogedUser.Id;
  FailMensage(lblfeedbackLogin, Feedback);

end;

procedure TfrmCrud.btnSalvarAlteracoesClick(Sender: TObject);
var
  Feedback: string;
begin
  //Construir um Usuário com os dados informados
  FUser.Login := edtLogin.text;
  FUser.Senha := edtSenha.text;
  FUser.Nome := edtNome.text;
  FUser.CPF := edtCPF.text;
  FUser.Telefone := edtTelefone.text;

  if (edtTipo.text = 'Convidado') then
    FUser.TipoDeUsuario := 0
  else if (edtTipo.text = 'Cliente') then
    FUser.TipoDeUsuario := 1
  else
    FUser.TipoDeUsuario := 2;

  //Verificar a unicidade do login
  FeedBack := FUserControle.VerificarSeUsuarioUnico(FUser);

  if Feedback.IsEmpty then
  begin
    Feedback := FUserControle.EditarUsuario(FUser);
    //Atualizando o Singleton
    LogedUser.Login := edtLogin.text;
    LogedUser.Senha := edtSenha.text;
    LogedUser.Nome := edtNome.text;
    LogedUser.CPF := edtCPF.text;
    LogedUser.Telefone := edtTelefone.text;
    SuccessMensage(lblfeedbackPerfil, Feedback);
  end
  else
    FailMensage(lblfeedbackPerfil, Feedback);
end;

procedure TfrmCrud.btnCadastroLoginClick(Sender: TObject);
begin
  LimparEdits(self);
  pcCrud.ActivePage := tsLogin;
end;

procedure TfrmCrud.btnLoginCadastroClick(Sender: TObject);
begin
  LimparEdits(self);
  pcCrud.ActivePage := tsCadastro;
end;

procedure TfrmCrud.btnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCrud.btnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCrud.btnClose3Click(Sender: TObject);
begin
  Close;
end;

end.
