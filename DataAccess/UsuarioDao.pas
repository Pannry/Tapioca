unit UsuarioDao;

interface

uses
  Usuario, FireDAC.Comp.Client;

type
  TUsuarioDao = class
  public
    function SalvarUsuario(User: TUsuario): string;
    function VerificarExistenciaUsuario(User: TUsuario): string;
    function VerificarSenhaUsuario(User: TUsuario): string;
    function RealizarLogin(User: TUsuario): string;
    function EditarUsuario(User: TUsuario): string;
    function RemoverUsuario(User: TUsuario): string;
    procedure RealizarLogout;
    function ListarUsuarios: TFDQuery;
  end;

implementation

{ TUsuarioDao }

uses
  DM, UsuarioLogadoSingleton, SysUtils;

function TUsuarioDao.SalvarUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text := 'INSERT INTO USUARIOS (TIPO, LOGIN, SENHA, NOME, CPF, TELEFONE) '+
                           'VALUES (:TipoSQL, :LoginSQL, :SenhaSQL, :NomeSQL, :CpfSQL, :TelefoneSQL)';
  dmDB.qrAdmin.ParamByName('TipoSQL').AsString := IntToStr(User.TipoDeUsuario);
  dmDB.qrAdmin.ParamByName('LoginSQL').AsString := User.Login;
  dmDB.qrAdmin.ParamByName('SenhaSQL').AsString := User.Senha;

  dmDB.qrAdmin.ParamByName('NomeSQL').AsString := User.Nome;
  dmDB.qrAdmin.ParamByName('CpfSQL').AsString := User.CPF;
  dmDB.qrAdmin.ParamByName('TelefoneSQL').AsString := User.Telefone;

  dmDB.qrAdmin.ExecSQL;
  Result := 'Usuário cadastrado com sucesso!';
end;

function TUsuarioDao.EditarUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;

  dmDB.qrAdmin.SQL.Text :=
'UPDATE USUARIOS SET NOME = :nomeSQL, LOGIN = :LoginSQL, SENHA = :senhaSQL, TIPO = :TipoSQL, CPF = :cpfSQL, TELEFONE = :foneSQL WHERE NOME = :nomeSQL';

  dmDB.qrAdmin.ParamByName('nomeSQL').AsString := User.Nome;
  dmDB.qrAdmin.ParamByName('LoginSQL').AsString := User.Login;
  dmDB.qrAdmin.ParamByName('senhaSQL').AsString := User.Senha;
  dmDB.qrAdmin.ParamByName('TipoSQL').AsInteger := User.TipoDeUsuario;
  dmDB.qrAdmin.ParamByName('cpfSQL').AsString := User.CPF;
  dmDB.qrAdmin.ParamByName('foneSQL').AsString := User.Telefone;

  dmDB.qrAdmin.ExecSQL;
  Result := 'Usuário editado!';
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

function TUsuarioDao.RemoverUsuario(User: TUsuario): string;
begin
  dmDB.qrAdmin.Close;
  dmDB.qrAdmin.SQL.Text := 'DELETE FROM Usuarios WHERE LOGIN = :nomeSQL';
  dmDB.qrAdmin.ParamByName('nomeSQL').AsString := User.Nome;
  dmDB.qrAdmin.ExecSQL;

  Result := 'Usuário removido!';
end;

function TUsuarioDao.ListarUsuarios: TFDQuery;
begin
  dmDB.qrUsuariosListar.Close;
  dmDB.qrUsuariosListar.Open('SELECT * FROM USUARIOS');
  Result := dmDB.qrUsuariosListar;

end;

end.
