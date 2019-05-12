unit uAdmCrudBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.CategoryButtons, Vcl.ExtCtrls, Vcl.DBCGrids, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrmAdmCrudBase = class(TForm)
    imPrincipal: TImageList;
    Panel2: TPanel;
    pcPrincipal: TPageControl;
    tsAba1: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel3: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    tsAba2: TTabSheet;
    panelTabSheet2: TPanel;
    Label10: TLabel;
    tsAba3: TTabSheet;
    panelTabSheet3: TPanel;
    Label11: TLabel;
    tsAba4: TTabSheet;
    panelTabSheet4: TPanel;
    Label12: TLabel;
    SplitView1: TSplitView;
    cbMenu: TCategoryButtons;
    Panel1: TPanel;
    Label1: TLabel;
    SearchBox1: TSearchBox;
    qrDados: TFDQuery;
    dsDados: TDataSource;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure CategoryButtons1Categories0Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items5Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmCrudBase: TfrmAdmCrudBase;

implementation

{$R *.dfm}

uses DM;

procedure TfrmAdmCrudBase.CategoryButtons1Categories0Items3Click(
  Sender: TObject);
begin
  pcPrincipal.ActivePage := tsAba1;
end;

procedure TfrmAdmCrudBase.CategoryButtons1Categories0Items4Click(
  Sender: TObject);
begin
  pcPrincipal.ActivePage := tsAba2;
end;

procedure TfrmAdmCrudBase.CategoryButtons1Categories0Items5Click(
  Sender: TObject);
begin
  pcPrincipal.ActivePage := tsAba3;
end;

procedure TfrmAdmCrudBase.CategoryButtons1Categories0Items6Click(
  Sender: TObject);
begin
  pcPrincipal.ActivePage := tsAba4;
end;

procedure TfrmAdmCrudBase.FormShow(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to pcPrincipal.PageCount - 1 do
    pcPrincipal.Pages[I].TabVisible := false;
end;

end.
