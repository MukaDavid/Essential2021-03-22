object dmdCadPaises: TdmdCadPaises
  OldCreateOrder = False
  Height = 209
  Width = 304
  object qryPaises: TFDQuery
    Connection = dmdConexao.FDConnection1
    SQL.Strings = (
      'Select *'
      'from country')
    Left = 40
    Top = 40
    object qryPaisesCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryPaisesCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      Required = True
      Size = 10
    end
  end
end
