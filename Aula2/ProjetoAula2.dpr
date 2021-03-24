program ProjetoAula2;

uses
  Vcl.Forms,
  form.principal in 'form.principal.pas' {frmMenuPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.
