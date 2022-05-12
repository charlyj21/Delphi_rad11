program gui;

uses
  Vcl.Forms,
  main in 'main.pas' {UI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUI, UI);
  Application.Run;
end.
