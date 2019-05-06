unit UsuarioLogadoSingleton;

interface
type
  TUsuarioLogadoSingleton = class
  private
    class var
      FNome: string;
      FPermissao: Integer;
      FLogin: string;
      FCPF: Integer;
      FTipoDeUsuario: Integer;
      FTelefone: string;

      constructor Create;
  public
    class property Nome: string read FNome write Fnome;
    class property Login: string read FLogin write FLogin;
    class property Permissao: Integer read FPermissao write FPermissao;
    class property CPF: Integer read FCPF write FCPF;
    class property Telefone: string read FTelefone write FTelefone;
    class property TipoDeUsuario: Integer read FTipoDeUsuario write FTipoDeUsuario;

    class function NewInstance: TObject; override;
    class function ObterInstancia: TUsuarioLogadoSingleton;
    procedure DefinirUsuario(Login: string = 'Convidado'; Permissao: Integer = 0);
  end;

var
  Instancia: TUsuarioLogadoSingleton;

implementation

uses
  sysUtils;
{ TUsuarioLogado }

constructor TUsuarioLogadoSingleton.Create;
begin
  DefinirUsuario;
end;

class function TUsuarioLogadoSingleton.NewInstance: TObject;
begin
  if not Assigned(Instancia) then
    Instancia := TUsuarioLogadoSingleton(Inherited NewInstance);
  Result := Instancia;
end;

class function TUsuarioLogadoSingleton.ObterInstancia: TUsuarioLogadoSingleton;
begin
  Result := TUsuarioLogadoSingleton.Create;
end;

procedure TUsuarioLogadoSingleton.DefinirUsuario(Login: string = 'Convidado'; Permissao: Integer = 0);
begin
  FLogin := Login;
  FPermissao := Permissao;
end;

initialization

finalization
  FreeAndNil(Instancia);

end.
