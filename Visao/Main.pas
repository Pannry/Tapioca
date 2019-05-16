unit Main;

interface

uses
  UsuarioControle, UsuarioLogadoSingleton, Carrinho, Notificacao,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.DBCGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, LogConcreteObserverSingleton;

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
    cgVitrine: TDBCtrlGrid;
    btnLogout: TSpeedButton;
    btnPerfil: TSpeedButton;
    qrVitrine: TFDQuery;
    Panel8: TPanel;
    shpFundoPrincipal: TShape;
    lblMainTitulo: TLabel;
    lblMainPreco: TLabel;
    lblMainDesc: TLabel;
    Shape5: TShape;
    shpFundoLaranja: TShape;
    shpBordaLateral: TShape;
    lblAdicionarCarrinho: TLabel;
    dsVitrine: TDataSource;
    btnNotificacao: TShape;
    pnCarrinho: TPanel;
    cgCarrinho: TDBCtrlGrid;
    Voltar: TButton;
    Button2: TButton;
    pnItemCarrinho: TPanel;
    Shape4: TShape;
    Shape7: TShape;
    btnRemoveCarrinho: TShape;
    lblProdAddCarrinho: TLabel;
    lblMainQtd: TLabel;
    Shape9: TShape;
    btnAddCarrinho: TShape;
    shpFundoCinza: TShape;
    lblNotif: TLabel;
    shpBordaAdicionarCarrinho: TShape;
    LogNotificacoes: TFrameLogNotificacoes;
    procedure btnCardapioClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnAdministracaoClick(Sender: TObject);
    procedure btnPerfilClick(Sender: TObject);
    procedure cgVitrinePaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure btnNotificacaoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VoltarClick(Sender: TObject);
    procedure btnShowCarrinhoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure btnSolicitarNotificacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cgCarrinhoPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
  private
    FPermissao: Integer;
    LogedUser: TUsuarioLogadoSingleton;
    Carrinho: TCarrinho;
    Notificacao: TNotificacao;
  public
    { Public declarations }
    procedure Refresh();
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uCardapio, uCrud, uAdm, DM, ProdutoControle;

{$R *.dfm}

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;
  Notificacao.UsuarioID := LogedUser.Id;

  qrVitrine := TProdutoControle.ListarProduto;
  dsVitrine.DataSet := qrVitrine;
  cgVitrinePaintPanel(cgVitrine, cgVitrine.PanelIndex);
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Carrinho.Free;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;

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
    LogNotificacoes.Visible := True;
    btnLogin.Visible := False;
    btnCadastro.Visible := False;
  end
  else
  begin
    btnLogin.Visible := True;
    btnCadastro.Visible := True;
    LogNotificacoes.Visible := False;
    btnLogout.Visible := False;
    btnPerfil.Visible := False;
  end;
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

procedure TFrmPrincipal.btnLogoutClick(Sender: TObject);
var
  UserCtrl: TUsuarioControle;
begin
  UserCtrl := TUsuarioControle.Create;
  try
    UserCtrl.LogoutUsuario;
    lblNomeUsuario.Caption := 'Convidado';//LogedUser.Login;
    FPermissao :=  0;//LogedUser.Permissao;
    LogNotificacoes.Visible := False;
    Refresh();
  finally
    UserCtrl.Free;
  end;
end;

procedure TFrmPrincipal.btnPerfilClick(Sender: TObject);
begin
  frmCrud := TfrmCrud.Create(self);
  try
    frmCrud.InicialForm := 'perfil';
    frmCrud.ShowModal;
  finally
    frmCrud.Free;
  end;
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;
end;

procedure TFrmPrincipal.cgCarrinhoPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  //  Implementação do carrinho
end;

Procedure TFrmPrincipal.cgVitrinePaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var
  curr: Currency;
begin
  if qrVitrine.FieldByName('QUANTIDADE').AsInteger = 0 then
    shpBordaLateral.Brush.Color := clRed
  else
    shpBordaLateral.Brush.Color := clGreen;

  lblMainTitulo.Caption := qrVitrine.FieldByName('NOME').AsString;
  lblMainDesc.Caption  := qrVitrine.FieldByName('DESCRICAO').AsString;
  lblMainQtd.Caption  := 'Qtd: ' + qrVitrine.FieldByName('QUANTIDADE').AsString;
  curr :=  StrToCurr(qrVitrine.FieldByName('PRECO').AsString);
  lblMainPreco.Caption := 'R$ ' + FormatCurr('#0.#0', curr);
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

procedure TFrmPrincipal.btnNotificacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FPermissao > 0 then
    ShowMessage('produto adicionado')
  else
    ShowMessage('Por favor, realize o login!');
end;

procedure TFrmPrincipal.btnSolicitarNotificacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  UsuarioID: Integer;
  ProdutoID: Integer;
  Feedback: string;
begin
  if FPermissao > 0 then
    if (qrVitrine.FieldByName('QUANTIDADE').AsInteger > 0) then
      ShowMessage('O produto está disponível para compra!')
    else
      begin
        try
          UsuarioID := LogedUser.Id;
          ProdutoID := qrVitrine.FieldByName('ID').AsInteger;
          //Verificando a existencia da solicitacao
          dmDB.qrNotificacao.Close;
          dmDB.qrNotificacao.SQL.Text := 'SELECT * FROM NOTIFICACAOPRODUTO WHERE (PRODUTOID = :ProdutoId) and (USUARIOID = :UsuarioId)';
          dmDB.qrNotificacao.ParamByName('ProdutoId').AsInteger := ProdutoID;
          dmDB.qrNotificacao.ParamByName('UsuarioId').AsInteger := UsuarioID;
          dmDB.qrNotificacao.Open;
          Feedback := dmDB.qrNotificacao.FieldByName('PRODUTOID').AsString;
          dmDB.qrNotificacao.Close;

          //Se ainda não existe, criá-la
          if (Feedback.IsEmpty) then
          begin
            dmDB.qrNotificacao.SQL.Text := 'INSERT INTO NOTIFICACAOPRODUTO (PRODUTOID, USUARIOID) '+
                                            'VALUES (:ProdutoId, :UsuarioId)';
            dmDB.qrNotificacao.ParamByName('ProdutoId').AsInteger := ProdutoID;
            dmDB.qrNotificacao.ParamByName('UsuarioId').AsInteger := UsuarioID;
            dmDB.qrNotificacao.ExecSQL;
          end;

          //Feedback para o usuário
          ShowMessage('Você será notificado quando o produto estiver disponível!');
          Refresh();
        except
          ShowMessage('Houve um erro inesperado.');
        end;
      end
  else
    ShowMessage('Por favor, realize o login!');
end;

procedure TFrmPrincipal.VoltarClick(Sender: TObject);
begin
  pnCarrinho.Visible := False;
end;

procedure TFrmPrincipal.btnShowCarrinhoClick(Sender: TObject);
begin
  if FPermissao > 0 then
    pnCarrinho.Visible := True
  else
    ShowMessage('Por favor, realize o login!');

end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  ShowMessage('Compra realizada!');
  pnCarrinho.Visible := False;
end;


procedure TFrmPrincipal.Refresh;
var
  Notif: TNotificacao;

begin
  //Obtendo novamente os dados do Singleton

  dmDB.qrAdmin.SQL.Text := 'SELECT * FROM USUARIOS WHERE LOGIN = :LoginSQL and SENHA = :SenhaSQL';
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;
  Notif.UsuarioID := LogedUser.Id;
  LogNotificacoes.Atualizar(Notif);
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
    LogNotificacoes.Visible := True;
    btnLogin.Visible := False;
    btnCadastro.Visible := False;
  end
  else
  begin
    btnLogin.Visible := True;
    btnCadastro.Visible := True;
    LogNotificacoes.Visible := False;
    btnLogout.Visible := False;
    btnPerfil.Visible := False;
  end;
end;

end.
