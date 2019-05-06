unit UsuarioControle;

interface

uses
  Usuario, UusarioDao;

type
  TUsuarioControle = class
  private
    FUser: TUsuario;
    FUserDao: TUsuarioDao;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    function CriarUsuario(tipo: Integer; login, senha:string): string;
    function VerificarSeUsuarioUnico(login: string): string;
    function LogarUsuario(login, senha: string): string;
    procedure LogoutUsuario;
  end;

implementation

uses
  sysUtils;

{ TUsuarioControle }

constructor TUsuarioControle.Create;
begin
  FUser := TUsuario.Create;
  FUserDao := TUsuarioDao.Create;
end;

destructor TUsuarioControle.Destroy;
begin
  FUser.Free;
  FUserDao.Free;
end;

function TUsuarioControle.CriarUsuario(tipo: Integer; login, senha: string): string;
begin
  FUser.TipoDeUsuario := tipo;
  FUser.Login := login;
  FUser.Senha := senha;
  Result := FUserDao.SalvarUsuario(FUser);
end;

function TUsuarioControle.VerificarSeUsuarioUnico(login: string): string;
var
  fb: string;
begin
  FUser.Login := login;

  fb := FUserDao.VerificarExistenciaUsuario(FUser);
  if fb.IsEmpty then
    Result := fb
  else
    Result := 'Usuario Indisponivel!';
end;

function TUsuarioControle.LogarUsuario(login, senha: string): string;
var
  fb: string;
begin
  FUser.Login := login;

  fb := FUserDao.VerificarExistenciaUsuario(FUser);
  if fb.IsEmpty then
  begin
    Result := 'Usuario não existe!';
    exit;
  end;

  FUser.Senha := senha;

  fb := FUserDao.VerificarSenhaUsuario(FUser);
  if fb.IsEmpty then
  begin
    Result := 'Senha incorreta!';
    exit;
  end;

  fb := FUserDao.RealizarLogin(FUser);
  Result := fb;
end;


procedure TUsuarioControle.LogoutUsuario;
begin
  FUserDao.RealizarLogout;
end;

end.
