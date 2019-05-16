unit IObserver;

interface

uses
  Notificacao;

type
  { Observer }
  InterfaceObserver = interface

    // Método que será chamado pelo Subject
    procedure Atualizar(Notificacao: TNotificacao);
  end;

implementation

end.
