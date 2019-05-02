unit UsuarioLogadoSingleton;

interface
type
  TUsuarioLogadoSingleton = class
  private
    class var
      FNome: string;
      FPermissao: Integer;

      constructor Create;
  public
    class property Nome: string read FNome write Fnome;
    class property Permissao: Integer read FPermissao write FPermissao;

    class function NewInstance: TObject; override;
    class function ObterInstancia: TUsuarioLogadoSingleton;
    procedure DefinirUsuario(Nome: string = 'Convidado'; Permissao: Integer = 0);
  end;

var
  Instancia: TUsuarioLogadoSingleton;

implementation

uses
  sysUtils;
{ TUsuarioLogado }

constructor TUsuarioLogadoSingleton.Create;
begin
  DefinirUsuario;
end;

class function TUsuarioLogadoSingleton.NewInstance: TObject;
begin
  if not Assigned(Instancia) then
    Instancia := TUsuarioLogadoSingleton(Inherited NewInstance);
  Result := Instancia;
end;

class function TUsuarioLogadoSingleton.ObterInstancia: TUsuarioLogadoSingleton;
begin
  Result := TUsuarioLogadoSingleton.Create;
end;

procedure TUsuarioLogadoSingleton.DefinirUsuario(Nome: string = 'Convidado'; Permissao: Integer = 0);
begin
  FNome := Nome;
  FPermissao := Permissao;
end;

initialization

finalization
  FreeAndNil(Instancia);

end.
