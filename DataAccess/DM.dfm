object dmDB: TdmDB
  OldCreateOrder = False
  Height = 297
  Width = 958
  object ConDB: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Thales\Downloads\Tapioca-master\dados\BILLYAPS' +
        '2.FDB'
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
    Left = 200
    Top = 160
  end
  object qrProdutosListar: TFDQuery
    Connection = ConDB
    SQL.Strings = (
      '')
    Left = 200
    Top = 216
  end
  object qrUsuariosListar: TFDQuery
    Connection = ConDB
    Left = 56
    Top = 168
  end
end
