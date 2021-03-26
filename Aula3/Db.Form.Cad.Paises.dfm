inherited frmCadPaises: TfrmCadPaises
  Caption = 'frmCadPaises'
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
      ExplicitLeft = 0
      object Label1: TLabel [0]
        Left = 24
        Top = 32
        Width = 48
        Height = 13
        Caption = 'COUNTRY'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 72
        Width = 54
        Height = 13
        Caption = 'CURRENCY'
        FocusControl = DBEdit2
      end
      inherited pnlCadastro: TPanel
        ExplicitLeft = 0
        ExplicitTop = 308
        ExplicitWidth = 513
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 45
        Width = 199
        Height = 21
        DataField = 'COUNTRY'
        DataSource = dtsPesquisa
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 91
        Width = 134
        Height = 21
        DataField = 'CURRENCY'
        DataSource = dtsPesquisa
        TabOrder = 2
      end
    end
  end
end
