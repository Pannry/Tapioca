unit IObserver;

interface

uses
  Notificacao;

type
  { Observer }
  InterfaceObserver = interface

    // M�todo que ser� chamado pelo Subject
    procedure Atualizar(Notificacao: TNotificacao);
  end;

implementation

end.
