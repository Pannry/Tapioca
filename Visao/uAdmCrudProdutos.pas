unit uAdmCrudProdutos;

interface

uses
  ProdutoControle, Produto,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAdmCrudBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.ExtCtrls,
  Vcl.DBCGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmAdmCrudProdutos = class(TfrmAdmCrudBase)
    Label5: TLabel;
    lblTipoProduto: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtAddProdutoNome: TEdit;
    edtAddProdutoPreco: TEdit;
    Label9: TLabel;
    cbAddProdutoTipo: TComboBox;
    Label13: TLabel;
    btnAddProdutoCadastrar: TButton;
    btnAddProdutoCancelar: TButton;
    btnEditarProdutoCadastrar: TButton;
    Button2: TButton;
    Label14: TLabel;
    Label99: TLabel;
    Label16: TLabel;
    btnRemoverProdutoCadastrar: TButton;
    Button4: TButton;
    Label18: TLabel;
    qrDadosID: TIntegerField;
    qrDadosNOME: TStringField;
    qrDadosDESCRICAO: TStringField;
    qrDadosTIPO_PRODUTO: TIntegerField;
    qrDadosPRECO: TBCDField;
    qrDadosQUANTIDADE: TIntegerField;
    Label19: TLabel;
    mmDescricao: TMemo;
    lblFbAddProd: TLabel;
    lblFbEditProd: TLabel;
    mmEditDescProd: TDBMemo;
    edtEditPriceProd: TDBEdit;
    edtEditQtdProd: TDBEdit;
    LkCbEditProd: TDBLookupComboBox;
    Label15: TLabel;
    edtEditTypeProd: TDBEdit;
    Label17: TLabel;
    lblFbRemProd: TLabel;
    lkCbRemProd: TDBLookupComboBox;
    lblIdProduto: TLabel;
    lblQuantidadeProduto: TLabel;
    lblNomeProduto: TLabel;
    lblPrecoProduto: TLabel;
    procedure CategoryButtons1Categories0Items0Click(Sender: TObject);
    procedure cbMenuCategories0Items3Click(Sender: TObject);
    procedure cbMenuCategories0Items4Click(Sender: TObject);
    procedure cbMenuCategories0Items5Click(Sender: TObject);
    procedure cbMenuCategories0Items6Click(Sender: TObject);
    procedure cbMenuCategories0Items0Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnAddProdutoCadastrarClick(Sender: TObject);
    procedure btnEditarProdutoCadastrarClick(Sender: TObject);
    procedure btnRemoverProdutoCadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    ProdControl: TProdutoControle;
    Prod: TProduto;
  public
    { Public declarations }
  end;

var
  frmAdmCrudProdutos: TfrmAdmCrudProdutos;

implementation

{$R *.dfm}

uses
  SystemUtils;


procedure TfrmAdmCrudProdutos.FormShow(Sender: TObject);
begin
  inherited;
  Prod := TProduto.Create;
  ProdControl := TProdutoControle.Create;

  pcPrincipal.ActivePage := tsAba1;
  cbMenu.SelectedItem := cbMenu.Categories[0].Items[3];
  qrDados := TProdutoControle.ListarProduto;
  dsDados.DataSet := qrDados;
  DBCtrlGrid1PaintPanel(DBCtrlGrid1, DBCtrlGrid1.PanelIndex);
end;

procedure TfrmAdmCrudProdutos.CategoryButtons1Categories0Items0Click(Sender: TObject);
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
  curr: Currency;
begin
  inherited;
  try
    lblNomeProduto.Caption := qrDados.FieldByName('NOME').AsString;
    lblQuantidadeProduto.Caption := qrDados.FieldByName('QUANTIDADE').AsString;
    lblIdProduto.Caption := qrDados.FieldByName('ID').AsString;
    lblTipoProduto.Caption := qrDados.FieldByName('TIPO_PRODUTO').AsString;

    curr :=  StrToCurr(qrDados.FieldByName('PRECO').AsString);
    lblPrecoProduto.Caption := 'R$ ' + FormatCurr('#0.#0', curr);
  except
    //
  end;
end;

procedure TfrmAdmCrudProdutos.btnAddProdutoCadastrarClick(Sender: TObject);
var
  fb: string;
begin
  inherited;
  Prod.Nome := edtAddProdutoNome.Text;
  Prod.Preco := edtAddProdutoPreco.Text;
  Prod.Descricao := mmDescricao.Text;
  Prod.TipoProduto := cbAddProdutoTipo.ItemIndex + 1;
  Prod.QTDEstoque := 0;

  fb := ProdControl.CadastrarProduto(Prod);
  SuccessMensage(lblFbAddProd, fb);
  qrDados.Refresh;
  LimparEdits(self);
end;

procedure TfrmAdmCrudProdutos.btnEditarProdutoCadastrarClick(Sender: TObject);
var
  fb: string;
begin
  inherited;
  Prod.Nome := LkCbEditProd.Text;
  Prod.Preco := edtEditPriceProd.Text;
  Prod.Descricao := mmEditDescProd.Text;
  Prod.TipoProduto := StrToInt(edtEditTypeProd.Text);
  Prod.QTDEstoque := StrToInt(edtEditQtdProd.Text);

  fb := ProdControl.EditarProduto(Prod);
  SuccessMensage(lblFbEditProd, fb);
  LimparEdits(self);
  qrDados.Refresh;
end;

procedure TfrmAdmCrudProdutos.btnRemoverProdutoCadastrarClick(Sender: TObject);
var
  fb: string;
begin
  inherited;
  Prod.Nome := lkCbRemProd.Text;

  fb := ProdControl.RemoverProduto(Prod);
  SuccessMensage(lblFbRemProd, fb);
  LimparEdits(self);
  qrDados.Refresh;
end;

procedure TfrmAdmCrudProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Prod.Free;
  ProdControl.Free;
  inherited;
end;

end.
