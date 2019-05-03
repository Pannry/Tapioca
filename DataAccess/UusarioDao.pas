unit UusarioDao;

interface

uses
  Usuario;

type
  TUsuarioDao = class
  protected
    function SalvarUsuario(User: TUsuario): string; virtual; abstract;
    //procedure CarregarUsuario(nome: string); abstract;
  end;

type
  TAdminDao = class(TUsuarioDao)
  private
    //FNome: string;
  public
    function SalvarUsuario(User: TUsuario): string; override;
  end;

type
  TClienteDao = class(TUsuarioDao)
  private
    //FNome: string;
  public
    function SalvarUsuario(User: TUsuario): string; override;
    function VerificarExistenciaUsuario(User: TUsuario): string;
    function VerificarSenhaUsuario(User: TUsuario): string;
    function RealizarLogin(User: TUsuario): string;
    procedure RealizarLogout;
  end;

implementation

{ TVendedorDao }

uses
  DM, UsuarioLogadoSingleton;

function TAdminDao.SalvarUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'INSERT INTO USUARIO (TIPO, NOME, SENHA) values (1, :NomeSQL, :SenhaSQL)';
  dmDB.qrAdmin.ParamByName('NomeSQL').AsString := User.Nome;
  dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;

  dmDB.qrAdmin.ExecSQL;
  Result := 'Administrador cadastrado com sucesso!';
end;

{ TClienteDao }

function TClienteDao.SalvarUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'INSERT INTO USUARIO (TIPO, NOME, SENHA) values (2, :NomeSQL, :SenhaSQL)';
  dmDB.qrAdmin.ParamByName('NomeSQL').AsString := User.Nome;
  dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;

  dmDB.qrAdmin.ExecSQL;
  Result := 'Cliente cadastrado com sucesso!';
end;

function TClienteDao.VerificarExistenciaUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'SELECT * FROM USUARIO WHERE NOME = :NomeSQL';
  dmDB.qrAdmin.ParamByName('NomeSQL').AsString := User.Nome;

  dmDB.qrAdmin.Open;

  Result := dmDB.qrAdmin.FieldByName('NOME').AsString;
end;

function TClienteDao.VerificarSenhaUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'SELECT * FROM USUARIO WHERE NOME = :NomeSQL and SENHA = :SenhaSQL';
  dmDB.qrAdmin.ParamByName('NomeSQL').AsString := User.Nome;
  dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;
  dmDB.qrAdmin.Open;

  Result := dmDB.qrAdmin.FieldByName('NOME').AsString;
end;

function TClienteDao.RealizarLogin(User: TUsuario): string;
var
  LogedUser: TUsuarioLogadoSingleton;
  nome: string;
  permissao: Integer;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'SELECT * FROM USUARIO WHERE NOME = :NomeSQL and SENHA = :SenhaSQL';
  dmDB.qrAdmin.ParamByName('NomeSQL').AsString := User.Nome;
  dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;
  dmDB.qrAdmin.Open;

  nome := dmDB.qrAdmin.FieldByName('NOME').AsString;
  permissao := dmDB.qrAdmin.FieldByName('TIPO').AsInteger;

  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
  LogedUser.DefinirUsuario(nome, permissao);
  Result := '';
end;

procedure TClienteDao.RealizarLogout;
var
  LogedUser: TUsuarioLogadoSingleton;
begin
  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
  LogedUser.DefinirUsuario;
end;

end.
