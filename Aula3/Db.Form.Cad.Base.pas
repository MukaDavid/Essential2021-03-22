unit Db.Form.Cad.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadBase = class(TForm)
    pgcCadastro: TPageControl;
    tabPesquisa: TTabSheet;
    pnlBotoes: TPanel;
    btnIncluir: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    dbgrdPesquisa: TDBGrid;
    pnlConfirmacao: TPanel;
    pnlPesquisa: TPanel;
    lblPesquisa: TLabel;
    edtPesquisa: TEdit;
    btnPesquisar: TBitBtn;
    dtsPesquisa: TDataSource;
    tabCadastro: TTabSheet;
    pnlCadastro: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dtsPesquisaStateChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBase: TfrmCadBase;

implementation

{$R *.dfm}

procedure TfrmCadBase.btnCancelarClick(Sender: TObject);
begin
  if dtsPesquisa.DataSet <> nil then
    dtsPesquisa.DataSet.Cancel;
end;

procedure TfrmCadBase.btnEditarClick(Sender: TObject);
begin
  if dtsPesquisa.DataSet <> nil then
    dtsPesquisa.DataSet.Edit;
end;

procedure TfrmCadBase.btnIncluirClick(Sender: TObject);
begin
  if dtsPesquisa.DataSet <> nil then
    dtsPesquisa.DataSet.Append;
end;

procedure TfrmCadBase.btnSalvarClick(Sender: TObject);
begin
  if dtsPesquisa.DataSet <> nil then
    dtsPesquisa.DataSet.Post;
end;

procedure TfrmCadBase.dtsPesquisaStateChange(Sender: TObject);
begin
  if dtsPesquisa.DataSet.State in dsEditModes then
    pgcCadastro.ActivePage := tabCadastro
  else
    pgcCadastro.ActivePage := tabPesquisa;
end;

procedure TfrmCadBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadBase.FormShow(Sender: TObject);
begin
  if dtsPesquisa.DataSet <> nil then
    dtsPesquisa.DataSet.Open;
end;

end.
