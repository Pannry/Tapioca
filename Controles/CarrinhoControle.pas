unit CarrinhoControle;

interface

uses
  Contnrs, FireDAC.Comp.Client, CarrinhoDao;

type
  TCarrinhoControle = class
  private
    CartDao: TCarrinhoDao;
  public
    constructor Create; virtual;
    destructor Destroy; override;

    function AdicionarProduto(aValue: string): string;
    function RemoverProduto(aValue: string): string;
    function RealizarCompra(Qr: TFDMemTable): string;
  end;

implementation

{ TCarrinhoControle }

constructor TCarrinhoControle.Create;
begin
  CartDao := TCarrinhoDao.Create;
end;

destructor TCarrinhoControle.Destroy;
begin
  CartDao.Free;
  inherited;
end;

function TCarrinhoControle.AdicionarProduto(aValue: string): string;
begin
  Result := CartDao.AdicionarProduto(aValue);
end;

function TCarrinhoControle.RemoverProduto(aValue: string): string;
begin
  Result := CartDao.RemoverProduto(aValue);
end;

function TCarrinhoControle.RealizarCompra(Qr: TFDMemTable): string;
begin
  Result := CartDao.RealizarCompra(Qr);
end;

end.
