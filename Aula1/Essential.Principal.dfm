object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 415
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblHoraAtual: TLabel
    Left = 354
    Top = 40
    Width = 58
    Height = 13
    Caption = 'lblHoraAtual'
  end
  object pnlComponentes: TPanel
    Tag = 10
    Left = 16
    Top = 24
    Width = 233
    Height = 345
    TabOrder = 0
    OnDblClick = pnlComponentesDblClick
    object lblTituloTexto: TLabel
      Left = 24
      Top = 56
      Width = 99
      Height = 13
      Caption = 'Texto a ser inserido:'
    end
    object lblEspelho: TLabel
      Left = 24
      Top = 102
      Width = 47
      Height = 13
      Caption = 'lblEspelho'
    end
    object memTexto: TMemo
      Left = 24
      Top = 176
      Width = 185
      Height = 121
      TabOrder = 0
    end
    object edtTexto: TEdit
      Left = 26
      Top = 75
      Width = 185
      Height = 21
      Color = clSkyBlue
      TabOrder = 1
      OnChange = edtTextoChange
    end
    object btnAddTexto: TButton
      Left = 24
      Top = 25
      Width = 121
      Height = 25
      BiDiMode = bdRightToLeft
      Caption = 'Adicionar Texto'
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = btnAddTextoClick
    end
    object cboOpcoes: TComboBox
      Left = 24
      Top = 136
      Width = 185
      Height = 21
      TabOrder = 3
      Text = 'Teste'
      Items.Strings = (
        '1'
        '2'
        '3')
    end
    object Button1: TButton
      Left = 160
      Top = 25
      Width = 51
      Height = 25
      Caption = 'Button1'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 320
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object Timer1: TTimer
    Tag = 10
    OnTimer = Timer1Timer
    Left = 296
    Top = 32
  end
end
