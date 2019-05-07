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
    function CriarUsuario(user: TUsuario): string;
    function VerificarSeUsuarioUnico(user: TUsuario): string;
    function LogarUsuario(user: TUsuario): string;
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

function TUsuarioControle.CriarUsuario(user: TUsuario): string;
begin
  FUser.Login := user.Login;
  FUser.Senha := user.Senha;
  Result := FUserDao.SalvarUsuario(FUser);
end;

function TUsuarioControle.VerificarSeUsuarioUnico(user: TUsuario): string;
var
  fb: string;
begin
  FUser.Login := user.Login;

  fb := FUserDao.VerificarExistenciaUsuario(FUser);
  if fb.IsEmpty then
    Result := fb
  else
    Result := 'Usuario Indisponivel!';
end;

function TUsuarioControle.LogarUsuario(user: TUsuario): string;
var
  fb: string;
begin
  FUser.Login := user.Login;
  FUser.Senha := user.Senha;

  fb := FUserDao.VerificarExistenciaUsuario(FUser);
  if fb.IsEmpty then
  begin
    Result := 'Usuario não existe!';
    exit;
  end;

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
