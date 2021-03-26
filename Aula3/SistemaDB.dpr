program SistemaDB;

uses
  Vcl.Forms,
  Db.Form.Principal in 'Db.Form.Principal.pas' {frmPrincipal},
  Db.Form.Cadastro.Cliente in 'Db.Form.Cadastro.Cliente.pas' {frmCadastroCliente},
  Db.Datamodule.Conexao in 'Db.Datamodule.Conexao.pas' {dmdConexao: TDataModule},
  Db.Datamodule.Cadastro.Cliente in 'Db.Datamodule.Cadastro.Cliente.pas' {dmdCadastroCliente: TDataModule},
  Db.Form.Cad.Base in 'Db.Form.Cad.Base.pas' {frmCadBase},
  Db.Datamodule.Cadastro.Paises in 'Db.Datamodule.Cadastro.Paises.pas' {dmdCadPaises: TDataModule},
  Db.Form.Cad.Paises in 'Db.Form.Cad.Paises.pas' {frmCadPaises},
  Db.Form.Cad.Cliente in 'Db.Form.Cad.Cliente.pas' {frmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmdConexao, dmdConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmdCadastroCliente, dmdCadastroCliente);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadBase, frmCadBase);
  Application.CreateForm(TdmdCadPaises, dmdCadPaises);
  Application.CreateForm(TfrmCadPaises, frmCadPaises);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.Run;
end.
