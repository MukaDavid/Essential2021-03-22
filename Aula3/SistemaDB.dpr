program SistemaDB;

uses
  Vcl.Forms,
  Db.Form.Principal in 'Db.Form.Principal.pas' {frmPrincipal},
  Db.Form.Cadastro.Cliente in 'Db.Form.Cadastro.Cliente.pas' {frmCadastroCliente},
  Db.Datamodule.Conexao in 'Db.Datamodule.Conexao.pas' {dmdConexao: TDataModule},
  Db.Datamodule.Cadastro.Cliente in 'Db.Datamodule.Cadastro.Cliente.pas' {dmdCadastroCliente: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmdConexao, dmdConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmdCadastroCliente, dmdCadastroCliente);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.Run;
end.
