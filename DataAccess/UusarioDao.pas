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
  end;

implementation

{ TVendedorDao }

uses
  DM;

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

end.
