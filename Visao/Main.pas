unit Main;

interface

uses
  UsuarioControle,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.DBCGrids;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel8: TPanel;
    Shape2: TShape;
    Shape5: TShape;
    Shape3: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape6: TShape;
    Label9: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Shape1: TShape;
    lblVersion: TLabel;
    Panel3: TPanel;
    btnAdministracao: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnCardapio: TSpeedButton;
    btnTelaPrincipal: TSpeedButton;
    btnLogin: TSpeedButton;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    Panel7: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label5: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton11: TSpeedButton;
  private
    FAdmin: TAdminControle;
    FCliente: TClienteControle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{ TODO : Botoes Administra��o e relatorio aparecem apenas para os admin }
{ TODO : exemplo de cardapios: https://aquilafastfood.com.br/cardapio/ }

{$R *.dfm}

end.