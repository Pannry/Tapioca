unit UsuarioControle;

interface

uses
  Usuario, UusarioDao;

type
  TUsuarioControle = class
  protected
    constructor Create; virtual; abstract;
    destructor Destroy; override; abstract;

    function CriarUsuario(nome, senha:string): string; virtual; abstract;
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

    function CriarUsuario(nome, senha:string): string; override;
  end;


implementation

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

function TClienteControle.CriarUsuario(nome, senha: string): string;
begin
  FCliente.DefinirNome(nome, senha);
  Result := FClienteDao.SalvarUsuario(FCliente);
end;

end.
