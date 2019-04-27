program Tapioca;

uses
  Vcl.Forms,
  Main in 'Visao\Main.pas' {Form1},
  Usuario in 'Modelos\Usuario.pas',
  UsuarioControle in 'Controles\UsuarioControle.pas',
  UusarioDao in 'DataAccess\UusarioDao.pas',
  Produto in 'Modelos\Produto.pas',
  DM in 'DataAccess\DM.pas' {dmDB: TDataModule},
  uCardapio in 'Visao\uCardapio.pas' {frmCardapio},
  uCrud in 'Visao\uCrud.pas' {frmCrud};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TdmDB, dmDB);
  Application.CreateForm(TfrmCardapio, frmCardapio);
  Application.CreateForm(TfrmCrud, frmCrud);
  Application.Run;
end.
