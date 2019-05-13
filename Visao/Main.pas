unit Main;

interface

uses
  UsuarioControle, UsuarioLogadoSingleton, Carrinho,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.DBCGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    Shape2: TShape;
    lblMainTitulo: TLabel;
    lblMainPreco: TLabel;
    lblMainDesc: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape3: TShape;
    Label9: TLabel;
    dsVitrine: TDataSource;
    btnAddCarrinho: TShape;
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
    procedure btnCardapioClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnAdministracaoClick(Sender: TObject);
    procedure btnPerfilClick(Sender: TObject);
    procedure cgVitrinePaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure btnAddCarrinhoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VoltarClick(Sender: TObject);
    procedure btnShowCarrinhoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    FPermissao: Integer;
    LogedUser: TUsuarioLogadoSingleton;
    Carrinho: TCarrinho;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{ TODO 0 -oThales -cCardapio: exemplo de cardapios: https://aquilafastfood.com.br/cardapio/ }
{ TODO 0 -oThales -cCardapio: Basta apenas deixar o carrinho funcional, q está tudo pronto de interface }

uses
  uCardapio, uCrud, uAdm, DM, ProdutoControle;

{$R *.dfm}

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
  lblNomeUsuario.Caption := LogedUser.Login;
  FPermissao := LogedUser.Permissao;

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

procedure TFrmPrincipal.cgVitrinePaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var
  curr: Currency;
begin
  if qrVitrine.FieldByName('QUANTIDADE').AsInteger = 0 then
    Shape3.Brush.Color := clRed
  else
    Shape3.Brush.Color := clGreen;

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

procedure TFrmPrincipal.btnAddCarrinhoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FPermissao > 0 then
    ShowMessage('produto adicionado')
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

end.
