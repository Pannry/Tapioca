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
    Left = 32
    Top = 8
  end
  object qrAdmin: TFDQuery
    Connection = ConDB
    SQL.Strings = (
      'select * from usuarios;')
    Left = 32
    Top = 56
  end
  object qrProdutos: TFDQuery
    Connection = ConDB
    Left = 32
    Top = 168
  end
  object qrProdutosListar: TFDQuery
    Connection = ConDB
    SQL.Strings = (
      '')
    Left = 104
    Top = 168
  end
  object qrUsuariosListar: TFDQuery
    Connection = ConDB
    Left = 32
    Top = 112
  end
  object qrNotificacao: TFDQuery
    Connection = ConDB
    Left = 32
    Top = 232
  end
end
