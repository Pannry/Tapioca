unit LogConcreteObserverSingleton;

interface

uses
  Notificacao, IObserver, DM, Generics.Collections, FireDac.Stan.Param,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TFrameLogNotificacoes = class(TFrame, InterfaceObserver)
    mmMainMemo: TMemo;
    lblTitulo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(Notificacao: TNotificacao);
  end;


implementation

{$R *.dfm}

procedure TFrameLogNotificacoes.Atualizar(Notificacao: TNotificacao);
var
  listaDeIdsProdutos: TStringList;
  I: Integer;
  Nome: string;
  Quantidade: Integer;
begin
  //Capturando os nomes e quantidade de seus produtos solicitados
  dmDB.qrNotificacao.Close;
  dmDB.qrNotificacao.SQL.Text := 'SELECT NOME, QUANTIDADE FROM PRODUTOS AS P WHERE P.ID IN (' +
                                 'SELECT PRODUTOID FROM NOTIFICACAOPRODUTO WHERE (USUARIOID = :UsuarioId)) ORDER BY NOME';
  dmDB.qrNotificacao.ParamByName('UsuarioId').AsInteger := Notificacao.UsuarioID;
  dmDB.qrNotificacao.Open;


  ////Para cada solicitação encontrada, printar uma notificação
  mmMainMemo.Clear;
  for I := 0 to (dmDB.qrNotificacao.RecordCount-1) do
  begin
    dmDB.qrNotificacao.RecNo := (I+1);
    Nome := dmDB.qrNotificacao.Fields[0].AsString;
    Quantidade := dmDB.qrNotificacao.Fields[1].AsInteger;

    if (Quantidade > 0) then
      mmMainMemo.Lines.Add('O produto ' + Nome + ' está disponível!')
    else
      mmMainMemo.Lines.Add('O produto ' + Nome + ' ainda não está disponível!');
  end;


  dmDB.qrNotificacao.Close;
end;

end.
