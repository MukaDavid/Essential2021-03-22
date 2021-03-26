unit Db.Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Db.Form.Cadastro.Cliente, Db.Datamodule.Conexao,
  Vcl.Menus, Db.Form.Cad.Base, Db.Datamodule.Cadastro.Cliente,
  Db.Datamodule.Cadastro.Paises, Db.Form.Cad.Paises, Db.Form.Cad.Cliente;

type
  TfrmPrincipal = class(TForm)
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cliente1: TMenuItem;
    Paises1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Paises1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  if frmCadastroCliente = nil then
    Application.CreateForm(TfrmCadastroCliente,frmCadastroCliente);

  frmCadastroCliente.Show;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
var
  lfrmCadBase: TfrmCadBase;
  ldmdCadCliente: TdmdCadastroCliente;
begin
  lfrmCadBase := TfrmCadCliente.Create(Self);

  ldmdCadCliente := TdmdCadastroCliente.Create(lfrmCadBase);
  lfrmCadBase.dtsPesquisa.DataSet := ldmdCadCliente.qryCliente;

  lfrmCadBase.Show;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  FDTable1.Open;
end;

procedure TfrmPrincipal.Paises1Click(Sender: TObject);
var
  lfrmCadBase: TfrmCadPaises;
  ldmdCadPaises: TdmdCadPaises;
begin
  lfrmCadBase := TfrmCadPaises.Create(Self);

  ldmdCadPaises := TdmdCadPaises.Create(lfrmCadBase);
  lfrmCadBase.dtsPesquisa.DataSet := ldmdCadPaises.qryPaises;

  lfrmCadBase.Show;
end;

end.
