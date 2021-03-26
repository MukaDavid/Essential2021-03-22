unit Db.Datamodule.Cadastro.Paises;

interface

uses
  System.SysUtils, System.Classes, Db.Datamodule.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmdCadPaises = class(TDataModule)
    qryPaises: TFDQuery;
    qryPaisesCOUNTRY: TStringField;
    qryPaisesCURRENCY: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdCadPaises: TdmdCadPaises;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
