unit ProdutoDao;

interface

uses
  Produto, FireDAC.Comp.Client;

type
  TProdutoDao = class
  public
    // function BuscarProduto(ID: Integer): TProduto;
    function CadastrarProduto(Produto: TProduto): string;
    function EditarProduto(Produto: TProduto): string;
    function RemoverProduto(Produto: TProduto): string;
    function ListarProdutos: TFDQuery;
  end;

implementation

{ TProdutoDao }

uses DM, SysUtils;

function TProdutoDao.ListarProdutos: TFDQuery;
begin
  dmDB.qrProdutosListar.Close;
  dmDB.qrProdutosListar.Open('SELECT * FROM PRODUTOS');
  Result := dmDB.qrProdutosListar;
end;

function TProdutoDao.CadastrarProduto(Produto: TProduto): string;
begin
  dmDB.qrProdutos.Close;

  dmDB.qrProdutos.SQL.Text :=
    'INSERT INTO PRODUTOS (NOME, DESCRICAO, TIPO_PRODUTO, PRECO, QUANTIDADE)' +
    'VALUES (:nomeSQL, :DescricaoSQL, :tipoSQL, :precoSQL, :qtdSQL)';

  dmDB.qrProdutos.ParamByName('nomeSQL').AsString := Produto.Nome;
  dmDB.qrProdutos.ParamByName('DescricaoSQL').AsString := Produto.Descricao;
  dmDB.qrProdutos.ParamByName('tipoSQL').AsInteger := Produto.TipoProduto;
  dmDB.qrProdutos.ParamByName('precoSQL').AsCurrency := StrToCurr(Produto.Preco);
  dmDB.qrProdutos.ParamByName('qtdSQL').AsInteger := Produto.QTDEstoque;

  dmDB.qrProdutos.ExecSQL;
  Result := 'Produto cadastrado!';
end;

function TProdutoDao.EditarProduto(Produto: TProduto): string;
begin
  dmDB.qrProdutos.Close;

  dmDB.qrProdutos.SQL.Text :=
'UPDATE PRODUTOS SET NOME = :nomeSQL, DESCRICAO = :DescricaoSQL, TIPO_PRODUTO = :tipoSQL, PRECO = :precoSQL, QUANTIDADE = :qtdSQL WHERE NOME = :nomeSQL';

  dmDB.qrProdutos.ParamByName('nomeSQL').AsString := Produto.Nome;
  dmDB.qrProdutos.ParamByName('DescricaoSQL').AsString := Produto.Descricao;
  dmDB.qrProdutos.ParamByName('tipoSQL').AsInteger := Produto.TipoProduto;
  dmDB.qrProdutos.ParamByName('precoSQL').AsCurrency := StrToCurr(Produto.Preco);
  dmDB.qrProdutos.ParamByName('qtdSQL').AsInteger := Produto.QTDEstoque;

  dmDB.qrProdutos.ExecSQL;
  Result := 'Produto editado!';
end;

function TProdutoDao.RemoverProduto(Produto: TProduto): string;
begin
  dmDB.qrProdutos.Close;
  dmDB.qrProdutos.SQL.Text := 'DELETE FROM PRODUTOS WHERE NOME = :nomeSQL';
  dmDB.qrProdutos.ParamByName('nomeSQL').AsString := Produto.Nome;
  dmDB.qrProdutos.ExecSQL;

  Result := 'Produto removido!';
end;

end.
