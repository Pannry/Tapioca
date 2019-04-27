unit uCardapio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCardapio = class(TForm)
    ScrBoxCardapio: TScrollBox;
    Panel2: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Shape1: TShape;
    lblVersion: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    btnLogin: TSpeedButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCardapio: TfrmCardapio;

implementation

{$R *.dfm}

procedure TfrmCardapio.btnLoginClick(Sender: TObject);
begin
  Close;
end;

end.
