unit uAdmCrudProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAdmCrudBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.ExtCtrls,
  Vcl.DBCGrids, Vcl.ComCtrls;

type
  TfrmAdmCrudProdutos = class(TfrmAdmCrudBase)
    qrDadosID: TIntegerField;
    qrDadosNOME: TStringField;
    qrDadosPRECO: TCurrencyField;
    qrDadosQUANTIDADE_ESTOQUE: TIntegerField;
    Label5: TLabel;
    lblTipoProduto: TLabel;
    qrDadosTIPO_PRODUTO: TIntegerField;
    qrTipoCalc: TFDQuery;
    qrDadosTIPO_PRODUTO_LK: TStringField;
    qrTipoCalcID: TIntegerField;
    qrTipoCalcTIPO_PRODUTO: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    edtAddProdutoNome: TEdit;
    edtAddProdutoPreco: TEdit;
    Label9: TLabel;
    cbAddProdutoTipo: TComboBox;
    Label13: TLabel;
    btnAddProdutoCadastrar: TButton;
    btnAddProdutoCancelar: TButton;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Button3: TButton;
    Button4: TButton;
    ComboBox2: TComboBox;
    Label17: TLabel;
    Edit3: TEdit;
    Label18: TLabel;
    procedure CategoryButtons1Categories0Items0Click(Sender: TObject);
    procedure cbMenuCategories0Items3Click(Sender: TObject);
    procedure cbMenuCategories0Items4Click(Sender: TObject);
    procedure cbMenuCategories0Items5Click(Sender: TObject);
    procedure cbMenuCategories0Items6Click(Sender: TObject);
    procedure cbMenuCategories0Items0Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmCrudProdutos: TfrmAdmCrudProdutos;

implementation

{$R *.dfm}

procedure TfrmAdmCrudProdutos.CategoryButtons1Categories0Items0Click(
  Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAdmCrudProdutos.cbMenuCategories0Items0Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAdmCrudProdutos.cbMenuCategories0Items3Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba1;
end;

procedure TfrmAdmCrudProdutos.cbMenuCategories0Items4Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba2;
end;

procedure TfrmAdmCrudProdutos.cbMenuCategories0Items5Click(Sender: TObject);
begin
  inherited;
    pcPrincipal.ActivePage := tsAba3;
end;

procedure TfrmAdmCrudProdutos.cbMenuCategories0Items6Click(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba4;
end;

procedure TfrmAdmCrudProdutos.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var
  MoneyValue: string;
  curr: Currency;
begin
  inherited;
  lblNomeProduto.Caption := qrDadosNOME.AsString;
  lblQuantidadeProduto.Caption := qrDadosQUANTIDADE_ESTOQUE.AsString;
  lblIdProduto.Caption := qrDadosID.AsString;
  lblTipoProduto.Caption := qrDadosTIPO_PRODUTO_LK.AsString;

  curr :=  StrToCurr(qrDadosPRECO.AsString);
  lblPrecoProduto.Caption := 'R$ ' + FormatCurr('#0.#0', curr);
end;

procedure TfrmAdmCrudProdutos.FormShow(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsAba1;
  cbMenu.SelectedItem := cbMenu.Categories[0].Items[3];
  qrDados.Open;
end;

end.
