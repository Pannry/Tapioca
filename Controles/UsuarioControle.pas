unit UsuarioControle;

interface

uses
  Usuario, UusarioDao;

type
  TUsuarioControle = class
  protected
    constructor Create; virtual; abstract;

    function CriarUsuario(nome, senha:string): string; virtual; abstract;
    function LogarUsuario(nome, senha:string): string; virtual; abstract;
  public
    destructor Destroy; override; abstract;
  end;

  TAdminControle = class(TUsuarioControle)
  private
    FAdmin: TAdmin;
    FAdminDao: TAdminDao;
  public
    constructor Create; override;
    destructor Destroy; override;

    function CriarUsuario(nome, senha:string): string; override;
  end;

  TClienteControle = class(TUsuarioControle)
  private
    FCliente: TCliente;
    FClienteDao: TClienteDao;
  public
    constructor Create; override;
    destructor Destroy; override;

    function VerificarSeUsuarioUnico(nome: string): string;
    function CriarUsuario(nome, senha:string): string; override;
    function LogarUsuario(nome, senha:string): string; override;
  end;


implementation

uses
  sysUtils;

{ TAdminControle }

constructor TAdminControle.Create;
begin
  FAdmin := TAdmin.Create;
  FAdminDao := TAdminDao.Create;
end;

destructor TAdminControle.Destroy;
begin
  FAdmin.Free;
  FAdminDao.Free;
  inherited;
end;

function TAdminControle.CriarUsuario(nome, senha: string): string;
begin
  FAdmin.DefinirNome(nome, senha);
  Result := FAdminDao.SalvarUsuario(FAdmin);
end;

{ TClienteControle }

constructor TClienteControle.Create;
begin
  FCliente := TCliente.Create;
  FClienteDao := TClienteDao.Create;
end;

destructor TClienteControle.Destroy;
begin
  FCliente.Free;
  FClienteDao.Free;
  inherited;
end;

function TClienteControle.VerificarSeUsuarioUnico(nome: string): string;
var
  fb: string;
begin
  FCliente.Nome := nome;

  fb := FClienteDao.VerificarExistenciaUsuario(FCliente);
  if fb.IsEmpty then
    Result := fb
  else
    Result := 'Usuario Indisponivel!';
end;

function TClienteControle.CriarUsuario(nome, senha: string): string;
begin
  FCliente.DefinirNome(nome, senha);
  Result := FClienteDao.SalvarUsuario(FCliente);
end;

function TClienteControle.LogarUsuario(nome, senha: string): string;
var
  fb: string;
begin
  FCliente.Nome := nome;

  fb := FClienteDao.VerificarExistenciaUsuario(FCliente);
  if fb.IsEmpty then
  begin
    Result := 'Usuario não existe!';
    exit;
  end;

  FCliente.Senha := senha;

  fb := FClienteDao.VerificarSenhaUsuario(FCliente);
  if fb.IsEmpty then
  begin
    Result := 'Senha incorreta!';
    exit;
  end;

  fb := FClienteDao.RealizarLogin(FCliente);
  Result := fb;
end;

end.
