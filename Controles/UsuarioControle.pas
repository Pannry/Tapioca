unit UsuarioControle;

interface

uses
  Usuario, UsuarioDao, FireDAC.Comp.Client;

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
    function EditarUsuario(user: TUsuario): string;
    function RemoverUsuario(user: TUsuario): string;
    procedure LogoutUsuario;

    class function ListarUsuarios: TFDQuery;
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
  FUser.TipoDeUsuario := user.TipoDeUsuario;

  FUser.Nome := user.Nome;
  FUser.CPF := user.CPF;
  FUser.Telefone := user.Telefone;
  FUser.TipoDeUsuario := user.TipoDeUsuario;

  Result := FUserDao.SalvarUsuario(FUser);
end;

function TUsuarioControle.EditarUsuario(user: TUsuario): string;
begin
  Result := FUserDao.EditarUsuario(user);
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

class function TUsuarioControle.ListarUsuarios: TFDQuery;
var
  usrDao: TUsuarioDao;
begin
  Result := UsrDao.ListarUsuarios;
end;

procedure TUsuarioControle.LogoutUsuario;
begin
  FUserDao.RealizarLogout;
end;

function TUsuarioControle.RemoverUsuario(user: TUsuario): string;
begin
  Result := FUserDao.RemoverUsuario(user);
end;

end.
