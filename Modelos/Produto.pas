unit Produto;

interface

type
  { Classe Produto }

  TProduto = class
  private
    //
  protected
    FNome: string;
    FPreco: string;
    FQTDEstoque: string;
    FDescricao: string;

  public
    property Nome: string read FNome write FNome;
    property Preco: string read FPreco write FPreco;
    property QTDEstoque: string read FQTDEstoque write FQTDEstoque;
    property Descricao: string read FDescricao write FDescricao;

    procedure CriarProduto(nome, preco, descricao: string); virtual;
    procedure ListarProdutos; virtual; abstract;
  end;

implementation

{ TProduto }

procedure TProduto.CriarProduto(nome, preco, descricao: string);
begin

end;

end.
