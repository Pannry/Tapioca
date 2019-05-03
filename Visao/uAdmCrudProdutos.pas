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
    procedure CategoryButtons1Categories0Items0Click(Sender: TObject);
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

end.
