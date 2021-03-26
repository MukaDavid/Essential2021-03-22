object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 573
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 264
    Top = 232
    Width = 281
    Height = 209
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 264
    Top = 192
    Width = 121
    Height = 21
    DataField = 'COUNTRY'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 264
    Top = 136
    Width = 280
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 400
    Top = 192
    Width = 121
    Height = 21
    DataField = 'CURRENCY'
    DataSource = DataSource1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 470
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'COUNTRY'
    Connection = dmdConexao.FDConnection1
    UpdateOptions.UpdateTableName = 'COUNTRY'
    TableName = 'COUNTRY'
    Left = 48
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 48
    Top = 384
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 168
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object Paises1: TMenuItem
        Caption = 'Paises'
        OnClick = Paises1Click
      end
    end
  end
end
