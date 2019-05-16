program Tapioca;

uses
  Vcl.Forms,
  Main in 'Visao\Main.pas' {Form1},
  Usuario in 'Modelos\Usuario.pas',
  UsuarioControle in 'Controles\UsuarioControle.pas',
  UsuarioDao in 'DataAccess\UsuarioDao.pas',
  Produto in 'Modelos\Produto.pas',
  DM in 'DataAccess\DM.pas' {dmDB: TDataModule},
  uCardapio in 'Visao\uCardapio.pas' {frmCardapio},
  uCrud in 'Visao\uCrud.pas' {frmCrud},
  SystemUtils in 'Others\SystemUtils.pas',
  UsuarioLogadoSingleton in 'Others\UsuarioLogadoSingleton.pas',
  uAdm in 'Visao\uAdm.pas' {frmAdm},
  uAdmCrudBase in 'Visao\uAdmCrudBase.pas' {frmAdmCrudBase},
  uAdmCrudProdutos in 'Visao\uAdmCrudProdutos.pas' {frmAdmCrudProdutos},
  ProdutoControle in 'Controles\ProdutoControle.pas',
  ProdutoDao in 'DataAccess\ProdutoDao.pas',
  uAdmCrudUsuarios in 'Visao\uAdmCrudUsuarios.pas' {frmAdmCrudUsuarios},
  Carrinho in 'Modelos\Carrinho.pas',
  CarrinhoControle in 'Controles\CarrinhoControle.pas',
  CarrinhoDao in 'DataAccess\CarrinhoDao.pas',
  Notificacao in 'Modelos\Notificacao.pas',
  LogConcreteObserverSingleton in 'Frames\LogConcreteObserverSingleton.pas' {FrameLogNotificacoes: TFrame},
  IObserver in 'Interfaces\IObserver.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDB, dmDB);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
