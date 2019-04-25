unit Usuario;

interface

type

  { Classe Usuario }

  TUsuario = class
  private
    //
  protected
    FNome: string;
    FSenha: string;
    FEmail: string;

  public
    property Nome: string read FNome write FNome;
    property Senha: string read FSenha write FSenha;
    property Email: string read FEmail write FEmail;

    procedure DefinirNome(n, s: string); overload;
    procedure ListarProdutos; virtual; abstract;
  end;

  { Classe Cliente }

  TCliente = class(TUsuario)
  private
    // FMeuCarrinho: TCarrinho;

  public
    //  property Carrinho: TCarrinho read FMeuCarrinho write FMeuCarrinho;

    procedure ListarProdutos; Override;
    procedure AdicionarProdutoCarrinho(NomeProduto: string);
  end;

  { Classe Vendedor }

  TAdmin = class(TUsuario)
  private
    //
  public
    procedure ListarProdutos; Override;
    procedure ListarVendas;
  end;

implementation

{ TUsuario }

procedure TUsuario.DefinirNome(n, s: string);
begin
  { TODO : Ao criar um usuario sem os inputs, enviar uma mensagem de erro }
  Nome := n;
  Senha := s;
end;

{ TAdmin }

procedure TAdmin.ListarProdutos;
begin

end;

procedure TAdmin.ListarVendas;
begin

end;

{ TCliente }

procedure TCliente.AdicionarProdutoCarrinho(NomeProduto: string);
begin

end;

procedure TCliente.ListarProdutos;
begin

end;

end.
