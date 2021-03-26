inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TPageControl
    inherited tabPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 513
      ExplicitHeight = 349
      inherited pnlBotoes: TPanel
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 513
        inherited btnIncluir: TBitBtn
          ExplicitTop = 4
        end
        inherited btnEditar: TBitBtn
          ExplicitTop = 4
        end
        inherited btnExcluir: TBitBtn
          ExplicitLeft = 166
          ExplicitTop = 4
          ExplicitHeight = 33
        end
      end
      inherited pnlConfirmacao: TPanel
        ExplicitTop = 308
        ExplicitWidth = 513
      end
      inherited pnlPesquisa: TPanel
        ExplicitTop = 41
        ExplicitWidth = 513
        inherited lblPesquisa: TLabel
          Width = 73
          ExplicitTop = 4
          ExplicitWidth = 73
          ExplicitHeight = 13
        end
        inherited btnPesquisar: TBitBtn
          ExplicitLeft = 397
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object DBEdit1: TDBEdit
        Left = 48
        Top = 48
        Width = 257
        Height = 21
        DataField = 'CUST_NO'
        DataSource = dtsPesquisa
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 48
        Top = 88
        Width = 257
        Height = 21
        DataField = 'CUSTOMER'
        DataSource = dtsPesquisa
        TabOrder = 2
      end
    end
  end
end
