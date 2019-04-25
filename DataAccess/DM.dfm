object dmDB: TdmDB
  OldCreateOrder = False
  Height = 190
  Width = 958
  object ConDB: TFDConnection
    Params.Strings = (
      'Database=C:\dados\BILLYAPS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 456
    Top = 40
  end
  object qrAdmin: TFDQuery
    Connection = ConDB
    SQL.Strings = (
      'select * from usuario;')
    Left = 64
    Top = 104
  end
end
