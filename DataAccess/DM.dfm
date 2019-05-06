object dmDB: TdmDB
  OldCreateOrder = False
  Height = 297
  Width = 958
  object ConDB: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Thales\Documents\Thales\Projetos\Tapioca\dados' +
        '\BILLYAPS2.FDB'
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
      'select * from usuarios;')
    Left = 64
    Top = 104
  end
  object qrProdutos: TFDQuery
    Connection = ConDB
    SQL.Strings = (
      'Select * from Produtos;')
    Left = 152
    Top = 104
  end
end
