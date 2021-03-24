unit Essential.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlComponentes: TPanel;
    memTexto: TMemo;
    edtTexto: TEdit;
    btnAddTexto: TButton;
    Timer1: TTimer;
    lblHoraAtual: TLabel;
    lblTituloTexto: TLabel;
    cboOpcoes: TComboBox;
    Button1: TButton;
    lblEspelho: TLabel;
    Button2: TButton;
    procedure pnlComponentesDblClick(Sender: TObject);
    procedure btnAddTextoClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtTextoChange(Sender: TObject);
  private
    procedure ExibirAlerta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAddTextoClick(Sender: TObject);
begin
  memTexto.Lines.Add(edtTexto.Text);
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  memTexto.Lines.Add(cboOpcoes.Text);
end;

procedure TfrmPrincipal.edtTextoChange(Sender: TObject);
begin
  lblEspelho.Caption := edtTexto.Text;
end;

procedure TfrmPrincipal.ExibirAlerta;
begin
  ShowMessage('Alerta');
end;

procedure TfrmPrincipal.pnlComponentesDblClick(Sender: TObject);
begin
  ShowMessage('Duplo click do Panel');
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  lblHoraAtual.Caption := TimeToStr(now);
end;

end.
