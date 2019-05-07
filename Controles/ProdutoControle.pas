unit ProdutoControle;

interface

uses
  ProdutoDao, Produto, FireDAC.Comp.Client;

type
  TProdutoControle = class
  private
    FProd: TProduto;
    FProdDao: TProdutoDao;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    // function BuscarProduto(Produto: TProduto): string;
    function CadastrarProduto(Produto: TProduto): string;
    function EditarProduto(Produto: TProduto): string;
    function RemoverProduto(Produto: TProduto): string;
    class function ListarProduto: TFDQuery;
  end;

implementation

{ TProdutoControle }

constructor TProdutoControle.Create;
begin
  FProd := TProduto.Create;
  FProdDao := TProdutoDao.Create;
end;

destructor TProdutoControle.Destroy;
begin
  FProd.Free;
  FProdDao.Free;
  inherited;
end;

class function TProdutoControle.ListarProduto: TFDQuery;
var
  ProdDao: TProdutoDao;
begin
  Result := ProdDao.ListarProdutos;
end;

function TProdutoControle.CadastrarProduto(Produto: TProduto): string;
begin
  Result := FProdDao.CadastrarProduto(Produto);
end;

function TProdutoControle.EditarProduto(Produto: TProduto): string;
begin
  Result := FProdDao.EditarProduto(Produto);
end;

function TProdutoControle.RemoverProduto(Produto: TProduto): string;
begin
  Result := FProdDao.RemoverProduto(Produto);
end;

end.
