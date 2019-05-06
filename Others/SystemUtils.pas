unit SystemUtils;

interface

uses
  StdCtrls, Graphics, Controls;

procedure SuccessMensage(var lbl: TLabel; msg: string);
procedure FailMensage(var lbl: TLabel; msg: string);
procedure LimparEdits(Owner: TWinControl);

implementation

procedure SuccessMensage(var lbl: TLabel; msg: string);
begin
  lbl.Font.Color := clGreen;
  lbl.Caption := msg;
end;

procedure FailMensage(var lbl: TLabel; msg: string);
begin
  lbl.Font.Color := clRed;
  lbl.Caption := msg;
end;

procedure LimparEdits(Owner: TWinControl);
var
  I: Integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do
    if Owner.Components[i] is TEdit then TEdit(Owner.Components[i]).Clear;
end;
end.
