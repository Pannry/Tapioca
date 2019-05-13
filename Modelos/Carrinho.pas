unit Carrinho;

interface

uses
  Contnrs;

type
  TCarrinho = class
  private
    FListaDeProdutos: TObjectList;
  public
    property ListaDeProdutos: TObjectList read FListaDeProdutos write FListaDeProdutos;
  end;

implementation

end.
