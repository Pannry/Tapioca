program Tapioca;

uses
  Vcl.Forms,
  Main in 'Visao\Main.pas' {Form1},
  Usuario in 'Modelos\Usuario.pas',
  UsuarioControle in 'Controles\UsuarioControle.pas',
  UusarioDao in 'DataAccess\UusarioDao.pas',
  Produto in 'Modelos\Produto.pas',
  DM in 'DataAccess\DM.pas' {dmDB: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TdmDB, dmDB);
  Application.Run;
end.
