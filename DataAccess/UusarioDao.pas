unit UusarioDao;

interface

uses
  Usuario;

type
  TUsuarioDao = class
  public
    function SalvarUsuario(User: TUsuario): string;
    function VerificarExistenciaUsuario(User: TUsuario): string;
    function VerificarSenhaUsuario(User: TUsuario): string;
    function RealizarLogin(User: TUsuario): string;
    procedure RealizarLogout;
  end;

implementation

{ TUsuarioDao }

uses
  DM, UsuarioLogadoSingleton, SysUtils;

function TUsuarioDao.SalvarUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'INSERT INTO USUARIOS (TIPO, LOGIN, SENHA) values (:TipoSQL, :LoginSQL, :SenhaSQL)';
  dmDB.qrAdmin.ParamByName('TipoSQL').AsString := IntToStr(User.TipoDeUsuario);
  dmDB.qrAdmin.ParamByName('LoginSQL').AsString := User.Login;
  dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;

  dmDB.qrAdmin.ExecSQL;
  Result := 'Usuario cadastrado com sucesso!';
end;

function TUsuarioDao.VerificarExistenciaUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'SELECT * FROM USUARIOS WHERE LOGIN = :LoginSQL';
  dmDB.qrAdmin.ParamByName('LoginSQL').AsString := User.Login;

  dmDB.qrAdmin.Open;

  Result := dmDB.qrAdmin.FieldByName('LOGIN').AsString;
end;

function TUsuarioDao.VerificarSenhaUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'SELECT * FROM USUARIOS WHERE LOGIN = :LoginSQL and SENHA = :SenhaSQL';
  dmDB.qrAdmin.ParamByName('LoginSQL').AsString := User.Login;
  dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;
  dmDB.qrAdmin.Open;

  Result := dmDB.qrAdmin.FieldByName('LOGIN').AsString;
end;

function TUsuarioDao.RealizarLogin(User: TUsuario): string;
var
  LogedUser: TUsuarioLogadoSingleton;
  login: string;
  tipo: Integer;
begin
  try
    dmDB.qrAdmin.Close;

    dmDB.qrAdmin.SQL.Text := 'SELECT * FROM USUARIOS WHERE LOGIN = :LoginSQL and SENHA = :SenhaSQL';
    dmDB.qrAdmin.ParamByName('LoginSQL').AsString := User.Login;
    dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;
    dmDB.qrAdmin.Open;

    login := dmDB.qrAdmin.FieldByName('LOGIN').AsString;
    tipo := dmDB.qrAdmin.FieldByName('TIPO').AsInteger;

    LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
    LogedUser.DefinirUsuario(login, tipo);
    Result := '';
  except
    Result := 'Falha no login';
  end;
end;

procedure TUsuarioDao.RealizarLogout;
var
  LogedUser: TUsuarioLogadoSingleton;
begin
  LogedUser := TUsuarioLogadoSingleton.ObterInstancia;
  LogedUser.DefinirUsuario;
end;

end.
