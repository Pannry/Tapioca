unit uAdm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmAdm = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    Image2: TImage;
    Label3: TLabel;
    Shape2: TShape;
    Panel1: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Shape1: TShape;
    Panel5: TPanel;
    Image4: TImage;
    Label5: TLabel;
    Shape4: TShape;
    procedure MouseEnterShape(Sender: TObject);
    procedure MouseLeaveShape(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdm: TfrmAdm;

implementation

{$R *.dfm}

uses uAdmCrudProdutos;

procedure TfrmAdm.MouseEnterShape(Sender: TObject);
begin
  TShape(Sender).Pen.Style := psSolid;
end;

procedure TfrmAdm.MouseLeaveShape(Sender: TObject);
begin
  TShape(Sender).Pen.Style := psClear;
end;

procedure TfrmAdm.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //
end;

procedure TfrmAdm.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  frmAdmCrudProdutos := TfrmAdmCrudProdutos.Create(Self);
  try
    frmAdmCrudProdutos.ShowModal;
  finally
    frmAdmCrudProdutos.Free;
  end;
end;

procedure TfrmAdm.Shape4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Close;
end;

end.
