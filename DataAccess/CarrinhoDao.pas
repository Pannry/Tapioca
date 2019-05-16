unit CarrinhoDao;

interface

uses
  Contnrs, FireDAC.Comp.Client, SysUtils;

type
  TCarrinhoDao = class
  public
    function AdicionarProduto(aValue: string): string;
    function RemoverProduto(aValue: string): string;
    function RealizarCompra(Qr: TFDMemTable): string;
  end;

implementation

{ TCarrinhoDao }

uses DM;

function TCarrinhoDao.AdicionarProduto(aValue: string): string;
begin
  dmDB.qrCarrinho.Close;
  Result := '';
end;


function TCarrinhoDao.RemoverProduto(aValue: string): string;
begin
  dmDB.qrCarrinho.Close;
  Result := '';
end;

function TCarrinhoDao.RealizarCompra(Qr: TFDMemTable): string;
begin
  dmDB.qrCarrinho.Close;
  dmDB.qrCarrinho.Data := Qr.Data;

  // not work

  {dmDB.qrCarrinho.First;

  while not dmDB.qrCarrinho.Eof do
  begin
  dmDB.qrCarrinho.Edit;
  dmDB.qrCarrinho.SQL.Text :=
  'INSERT INTO COMPRAS (DATA, ID_PRODUTO, NOME, PRECO, QUANTIDADE) VALUES (:dataSQL, :id_pSQL, :nomeSQL, :precoSQL, :qtdSQL)';

  dmDB.qrCarrinho.ParamByName('dataSQL').AsDateTime := Now;
  dmDB.qrCarrinho.ParamByName('id_pSQL').AsInteger := dmDB.qrCarrinho.FieldByName('ID').AsInteger;
  dmDB.qrCarrinho.ParamByName('nomeSQL').AsString := dmDB.qrCarrinho.FieldByName('NOME').AsString;
  dmDB.qrCarrinho.ParamByName('precoSQL').AsFloat := dmDB.qrCarrinho.FieldByName('PRECO').AsFloat;
  dmDB.qrCarrinho.ParamByName('qtdSQL').AsInteger := dmDB.qrCarrinho.FieldByName('QUANTIDADE').AsInteger;

  dmDB.qrCarrinho.Post;
  dmDB.qrCarrinho.Next;
  end;

  dmDB.qrCarrinho.ExecSQL;
  Result := 'Compra Realizada!';}


end;

end.
