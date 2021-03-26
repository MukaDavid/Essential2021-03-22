object dmdConexao: TdmdConexao
  OldCreateOrder = False
  Height = 190
  Width = 241
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Program Files (x86)\Firebird\Firebird_2_5\examples\e' +
        'mpbuild\EMPLOYEE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
end
