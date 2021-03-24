object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 333
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnDataHora: TButton
    Left = 32
    Top = 24
    Width = 105
    Height = 25
    Caption = 'Exibir Data e Hora'
    TabOrder = 0
    OnClick = btnDataHoraClick
  end
  object edtVisor: TEdit
    Left = 32
    Top = 88
    Width = 169
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object edtValor: TEdit
    Left = 32
    Top = 136
    Width = 57
    Height = 21
    TabOrder = 2
    Text = '0'
    OnKeyPress = edtValorKeyPress
  end
  object btnSomar: TButton
    Left = 32
    Top = 176
    Width = 57
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = btnSomarClick
  end
  object rdgOperacoes: TRadioGroup
    Left = 224
    Top = 72
    Width = 217
    Height = 129
    Caption = 'Opera'#231#245'es'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Adi'#231#227'o'
      'Subtra'#231#227'o'
      'Divis'#227'o'
      'Multiplica'#231#227'o')
    TabOrder = 4
  end
  object btnCalculo: TButton
    Left = 112
    Top = 176
    Width = 89
    Height = 25
    Caption = 'Calcular'
    TabOrder = 5
    OnClick = btnCalculoClick
  end
  object btnCalcularNovo: TButton
    Left = 112
    Top = 224
    Width = 89
    Height = 25
    Caption = 'Calcular Novo'
    TabOrder = 6
    OnClick = btnCalcularNovoClick
  end
end
