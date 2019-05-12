unit Usuario;

interface

type

  { Classe Usuario }

  TUsuario = class
  protected
    FNome: string;
    FSenha: string;
    FLogin: string;
    FCPF: string;
    FTelefone: string;
    FTipoDeUsuario: Integer;
  public
    property Login: string read FLogin write FLogin;
    property Senha: string read FSenha write FSenha;
    property Nome: string read FNome write FNome;
    property CPF: string read FCPF write FCPF;
    property Telefone: string read FTelefone write FTelefone;
    property TipoDeUsuario: Integer read FTipoDeUsuario write FTipoDeUsuario;
    // procedure SolicitarNotificoes; virtual; abstract;

    // procedure ListarProdutos; virtual; abstract;   //not


  end;

implementation

{ TUsuario }

end.
