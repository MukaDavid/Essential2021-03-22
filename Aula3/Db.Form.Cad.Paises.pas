unit Db.Form.Cad.Paises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Db.Form.Cad.Base, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Db.Datamodule.Cadastro.Paises, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadPaises = class(TfrmCadBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPaises: TfrmCadPaises;

implementation

{$R *.dfm}

end.
