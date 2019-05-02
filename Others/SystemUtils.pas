unit SystemUtils;

interface

uses
  StdCtrls, Graphics;

procedure SuccessMensage(var lbl: TLabel; msg: string);
procedure FailMensage(var lbl: TLabel; msg: string);

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

end.
