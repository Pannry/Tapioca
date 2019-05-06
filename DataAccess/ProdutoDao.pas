unit ProdutoDao;

interface

uses
  Produto, Generics.Collections;

type
  TProdutoDao = class
  public
    function CadastrarProduto(Produto: TProduto): string;
    function EditarProduto(NomeProduto: string): string;
    function RemoverProduto(NomeProduto: string): string;
    function BuscarProduto(ID: Integer): TProduto;
    function ListarProdutos: TList<TProduto>;
  end;

implementation

{ TProdutoDao }

function TProdutoDao.BuscarProduto(ID: Integer): TProduto;
begin

end;

function TProdutoDao.CadastrarProduto(Produto: TProduto): string;
begin

end;

function TProdutoDao.EditarProduto(NomeProduto: string): string;
begin

end;

function TProdutoDao.ListarProdutos: TList<TProduto>;
begin

end;

function TProdutoDao.RemoverProduto(NomeProduto: string): string;
begin

end;

end.
