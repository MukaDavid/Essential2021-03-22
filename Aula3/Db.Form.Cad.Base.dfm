object frmCadBase: TfrmCadBase
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 377
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcCadastro: TPageControl
    Left = 0
    Top = 0
    Width = 521
    Height = 377
    ActivePage = tabPesquisa
    Align = alClient
    TabOrder = 0
    object tabPesquisa: TTabSheet
      Caption = 'Pesquisa'
      ExplicitLeft = 0
      ExplicitTop = 28
      ExplicitWidth = 571
      ExplicitHeight = 309
      object pnlBotoes: TPanel
        Left = 0
        Top = 0
        Width = 513
        Height = 41
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 96
        ExplicitTop = 56
        ExplicitWidth = 185
        object btnIncluir: TBitBtn
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 75
          Height = 33
          Align = alLeft
          Caption = 'Incluir'
          TabOrder = 0
          OnClick = btnIncluirClick
          ExplicitTop = 6
        end
        object btnEditar: TBitBtn
          AlignWithMargins = True
          Left = 85
          Top = 4
          Width = 75
          Height = 33
          Align = alLeft
          Caption = 'Editar'
          TabOrder = 1
          OnClick = btnEditarClick
          ExplicitTop = 6
        end
        object btnExcluir: TBitBtn
          AlignWithMargins = True
          Left = 166
          Top = 4
          Width = 75
          Height = 33
          Align = alLeft
          Caption = 'Excluir'
          TabOrder = 2
          ExplicitLeft = 184
          ExplicitTop = 8
          ExplicitHeight = 25
        end
      end
      object dbgrdPesquisa: TDBGrid
        Left = 0
        Top = 82
        Width = 513
        Height = 226
        Align = alClient
        DataSource = dtsPesquisa
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlConfirmacao: TPanel
        Left = 0
        Top = 308
        Width = 513
        Height = 41
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 268
        ExplicitWidth = 571
      end
      object pnlPesquisa: TPanel
        Left = 0
        Top = 41
        Width = 513
        Height = 41
        Align = alTop
        TabOrder = 3
        ExplicitTop = 43
        ExplicitWidth = 571
        DesignSize = (
          513
          41)
        object lblPesquisa: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 85
          Height = 33
          Align = alLeft
          Caption = 'Pesquisas por :'
          Layout = tlCenter
          ExplicitTop = 6
        end
        object edtPesquisa: TEdit
          Left = 85
          Top = 11
          Width = 306
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
        object btnPesquisar: TBitBtn
          Left = 397
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Pesquisar'
          TabOrder = 1
          ExplicitLeft = 449
        end
      end
    end
    object tabCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object pnlCadastro: TPanel
        Left = 0
        Top = 308
        Width = 513
        Height = 41
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 168
        ExplicitTop = 184
        ExplicitWidth = 185
        object btnSalvar: TBitBtn
          Left = 416
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
          OnClick = btnSalvarClick
        end
        object btnCancelar: TButton
          Left = 320
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btnCancelarClick
        end
      end
    end
  end
  object dtsPesquisa: TDataSource
    OnStateChange = dtsPesquisaStateChange
    Left = 36
    Top = 272
  end
end
