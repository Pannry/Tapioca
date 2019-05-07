
unit uCrud;

interface

uses
  UsuarioControle, Usuario,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmCrud = class(TForm)
    pcCrud: TPageControl;
    tsCadastro: TTabSheet;
    pnlCrud: TPanel;
    btnClose1: TSpeedButton;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtCadastroLogin: TEdit;
    edtCadastroSenha: TEdit;
    btnCadastroLogin: TButton;
    btnCadastroCadastro: TButton;
    tsLogin: TTabSheet;
    Panel1: TPanel;
    btnClose2: TSpeedButton;
    Shape4: TShape;
    Shape5: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtLoginLogin: TEdit;
    edtLoginSenha: TEdit;
    btnLoginCadastro: TButton;
    btnLoginLogin: TButton;
    pnlInfo: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    lblfeedbackLogin: TLabel;
    Label11: TLabel;
    lblFeedbackCadastro: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCadastroLoginClick(Sender: TObject);
    procedure btnLoginCadastroClick(Sender: TObject);
    procedure btnClose2Click(Sender: TObject);
    procedure btnClose1Click(Sender: TObject);
    procedure btnCadastroCadastroClick(Sender: TObject);
    procedure btnLoginLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FInicialForm: string;
    FUser: TUsuario;
    FUserControle: TUsuarioControle;
  public
    property InicialForm: string read FInicialForm write FInicialForm;
  end;

var
  frmCrud: TfrmCrud;

implementation

{$R *.dfm}

uses
  SystemUtils;

procedure TfrmCrud.FormShow(Sender: TObject);
var
  I: Integer;
begin
  FUserControle := TUsuarioControle.Create;
  FUser := TUsuario.Create;

  for I := 0 to pcCrud.PageCount - 1 do
    pcCrud.Pages[I].TabVisible := false;

  if InicialForm  = 'login' then
    pcCrud.ActivePage := tsLogin
  else
    pcCrud.ActivePage := tsCadastro;
end;

procedure TfrmCrud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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
begin
  FUser.Login := edtLoginLogin.Text;
  FUser.Senha := edtLoginSenha.Text;

  Feedback := FUserControle.LogarUsuario(FUser);
  if Feedback.IsEmpty then
    Close;

  FailMensage(lblfeedbackLogin, Feedback);
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

end.
