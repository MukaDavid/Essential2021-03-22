unit Db.Datamodule.Cadastro.Cliente;

interface

uses
  System.SysUtils, System.Classes, Db.Datamodule.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmdCadastroCliente = class(TDataModule)
    qryCliente: TFDQuery;
    qryClienteCUST_NO: TIntegerField;
    qryClienteCUSTOMER: TStringField;
    qryClienteCONTACT_FIRST: TStringField;
    qryClienteCONTACT_LAST: TStringField;
    qryClientePHONE_NO: TStringField;
    qryClienteADDRESS_LINE1: TStringField;
    qryClienteADDRESS_LINE2: TStringField;
    qryClienteCITY: TStringField;
    qryClienteSTATE_PROVINCE: TStringField;
    qryClienteCOUNTRY: TStringField;
    qryClientePOSTAL_CODE: TStringField;
    qryClienteON_HOLD: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdCadastroCliente: TdmdCadastroCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
