unit form.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOperacao = (opAdicao, opSubtracao, opDivisao, opMultiplicacao);

  TfrmMenuPrincipal = class(TForm)
    btnDataHora: TButton;
    edtVisor: TEdit;
    edtValor: TEdit;
    btnSomar: TButton;
    rdgOperacoes: TRadioGroup;
    btnCalculo: TButton;
    btnCalcularNovo: TButton;
    procedure btnDataHoraClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalculoClick(Sender: TObject);
    procedure btnCalcularNovoClick(Sender: TObject);
  private
    FResultado: Double;
    { Private declarations }
  public
    procedure ExibirDataHora;
    procedure Calcular(pOperacao: TOperacao);
    function PegarValor: double;
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;


implementation

{$R *.dfm}

{ TfrmMenuPrincipal }

procedure TfrmMenuPrincipal.btnCalcularNovoClick(Sender: TObject);
var
  lOperacao: TOperacao;
begin
  lOperacao := TOperacao(rdgOperacoes.ItemIndex);
  Calcular(lOperacao);

  edtVisor.Text := FloatToStr(FResultado);
end;

procedure TfrmMenuPrincipal.btnCalculoClick(Sender: TObject);
begin
  if rdgOperacoes.ItemIndex = 0 then // Adição
  begin
    FResultado := FResultado + PegarValor;
  end
  else if rdgOperacoes.ItemIndex = 1 then //Subtração
  begin
    FResultado := FResultado - PegarValor;
  end
  else if rdgOperacoes.ItemIndex = 2 then //Divisão
  begin
    FResultado := FResultado / PegarValor;
  end
  else if rdgOperacoes.ItemIndex = 3 then //Multiplicação
  begin
    FResultado := FResultado * PegarValor;
  end;

  edtVisor.Text := FloatToStr(FResultado);
end;

procedure TfrmMenuPrincipal.btnDataHoraClick(Sender: TObject);
begin
  ExibirDataHora;
end;

procedure TfrmMenuPrincipal.btnSomarClick(Sender: TObject);
begin
  FResultado := FResultado + StrToFloatDef(edtValor.Text,0);

  edtVisor.Text := FloatToStr(FResultado);
  edtValor.Text := '0';
end;

procedure TfrmMenuPrincipal.Calcular(pOperacao: TOperacao);
begin
  case pOperacao of
    opAdicao:        FResultado := FResultado + PegarValor;
    opSubtracao:     FResultado := FResultado - PegarValor;
    opDivisao:       FResultado := FResultado / PegarValor;
    opMultiplicacao: FResultado := FResultado * PegarValor;
  else
    FResultado := 0;
  end;
end;

procedure TfrmMenuPrincipal.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',',']) and (ord(Key) <> VK_BACK) then
    Key := #0;

  if (Key = ',') and (Pos(',',edtValor.Text) <> 0) then
    Key := #0;
end;

procedure TfrmMenuPrincipal.ExibirDataHora;
var
  lHoraAtual: string;
begin
  lHoraAtual := DateTimeToStr(Now);

  ShowMessage(lHoraAtual);
end;

function TfrmMenuPrincipal.PegarValor: double;
begin
  Result := StrToFloat(edtValor.Text);
  edtValor.Text := '0';
end;

end.
