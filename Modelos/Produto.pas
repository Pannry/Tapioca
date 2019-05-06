unit Produto;

interface

type
  TProduto = class
  private
    FNome: string;
    FDescricao: string;
    FTipoProduto: Integer;
    FPreco: string;
    FQTDEstoque: string;
  public
    property Nome: string read FNome write FNome;
    property Descricao: string read FDescricao write FDescricao;
    property TipoProduto: Integer read FTipoProduto write FTipoProduto;
    property Preco: string read FPreco write FPreco;
    property QTDEstoque: string read FQTDEstoque write FQTDEstoque;
  end;

type
  TProdutoBebida = class(TProduto)
  private
    FCapacidade: string;
  public
    property Capacidade: string read FCapacidade write FCapacidade;
  end;

type
  TProdutoComida = class(TProduto)
  private
    FSabor: string;
    FTamanho: string;
  public
    property Sabor: string read FSabor write FSabor;
    property Tamanho: string read FTamanho write FTamanho;
  end;

implementation

{ TProduto }

end.
