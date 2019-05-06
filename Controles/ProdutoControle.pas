unit ProdutoControle;

interface

uses
  ProdutoDao, Produto, Generics.Collections;

type
  TProdutoControle = class
  public
    function CadastrarProduto(Produto: TProduto): string;
    function EditarProduto(Produto: TProduto): string;
    function RemoverProduto(Produto: TProduto): string;
    function BuscarProduto(Produto: TProduto): string;
    function ListarProduto(Produto: TProduto): TList<TProduto>;
  end;

implementation

{ TProdutoControle }

function TProdutoControle.BuscarProduto(Produto: TProduto): string;
begin

end;

function TProdutoControle.CadastrarProduto(Produto: TProduto): string;
begin

end;

function TProdutoControle.EditarProduto(Produto: TProduto): string;
begin

end;

function TProdutoControle.ListarProduto(Produto: TProduto): TList<TProduto>;
begin

end;

function TProdutoControle.RemoverProduto(Produto: TProduto): string;
begin

end;

end.
