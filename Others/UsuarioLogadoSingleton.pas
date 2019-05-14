unit UsuarioLogadoSingleton;

interface

uses
  Usuario;

type
  TUsuarioLogadoSingleton = class
  private
    class var
      FNome: string;
      FPermissao: Integer;
      FLogin: string;
      FCPF: string;
      FTipoDeUsuario: Integer;
      FTelefone: string;
      FSenha: string;

      constructor Create;
  public
    class property Nome: string read FNome write Fnome;
    class property Login: string read FLogin write FLogin;
    class property Senha: string read FSenha write FSenha;
    class property Permissao: Integer read FPermissao write FPermissao;
    class property CPF: string read FCPF write FCPF;
    class property Telefone: string read FTelefone write FTelefone;
    class property TipoDeUsuario: Integer read FTipoDeUsuario write FTipoDeUsuario;

    class function NewInstance: TObject; override;
    class function ObterInstancia: TUsuarioLogadoSingleton;
    procedure DefinirUsuarioCompleto(UsuarioLogado: TUsuario = nil);
  end;

var
  Instancia: TUsuarioLogadoSingleton;

implementation

uses
  sysUtils;
{ TUsuarioLogado }

constructor TUsuarioLogadoSingleton.Create;
begin
  DefinirUsuarioCompleto;
end;

class function TUsuarioLogadoSingleton.NewInstance: TObject;
begin
  if not Assigned(Instancia) then
    Instancia := TUsuarioLogadoSingleton(Inherited NewInstance);
  Result := Instancia;
end;

class function TUsuarioLogadoSingleton.ObterInstancia: TUsuarioLogadoSingleton;
begin
  //Se for a primeira vez, criar o Singleton. Se não, retornar o Singleton.
  if not Assigned(Instancia as TUsuarioLogadoSingleton) then
    Result := TUsuarioLogadoSingleton.Create
  else
    Result := Instancia;
end;


procedure TUsuarioLogadoSingleton.DefinirUsuarioCompleto(UsuarioLogado: TUsuario = nil);
begin
  if UsuarioLogado <> nil then
  begin
    self.FLogin := UsuarioLogado.Login;
    self.FSenha := UsuarioLogado.Senha;
    self.Fnome := UsuarioLogado.Nome;
    self.FCPF := UsuarioLogado.CPF;
    self.FTelefone := UsuarioLogado.Telefone;
    self.FPermissao := UsuarioLogado.TipoDeUsuario;
  end
  else
  begin
    FLogin := 'Convidado';
    FPermissao := 0;
  end;
end;

initialization

finalization
  FreeAndNil(Instancia);

end.
