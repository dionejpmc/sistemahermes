object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 454
  Width = 878
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'Y:\Projeto Hermes\DATABASE.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object DataSetConnection: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 112
    Top = 8
  end
  object IBDataSetProduto: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (CODBARRAS, DESCRICAO, ICMS, IPI, LOCAL, MARCA, MODELO, OBSERV' +
        'ACAO, QTDE, '
      '   TIPO, VALORCOMPRA, VALORVENDA)'
      'values'
      
        '  (:CODBARRAS, :DESCRICAO, :ICMS, :IPI, :LOCAL, :MARCA, :MODELO,' +
        ' :OBSERVACAO, '
      '   :QTDE, :TIPO, :VALORCOMPRA, :VALORVENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPRODUTO,'
      '  CODBARRAS,'
      '  DESCRICAO,'
      '  QTDE,'
      '  VALORVENDA,'
      '  VALORCOMPRA,'
      '  ICMS,'
      '  IPI,'
      '  MARCA,'
      '  MODELO,'
      '  LOCAL,'
      '  OBSERVACAO,'
      '  TIPO'
      'from PRODUTO '
      'where'
      '  IDPRODUTO = :IDPRODUTO')
    SelectSQL.Strings = (
      'select * from PRODUTO')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  CODBARRAS = :CODBARRAS,'
      '  DESCRICAO = :DESCRICAO,'
      '  ICMS = :ICMS,'
      '  IPI = :IPI,'
      '  LOCAL = :LOCAL,'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  QTDE = :QTDE,'
      '  TIPO = :TIPO,'
      '  VALORCOMPRA = :VALORCOMPRA,'
      '  VALORVENDA = :VALORVENDA'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO')
    GeneratorField.Field = 'IDPRODUTO'
    GeneratorField.Generator = 'GEN_PRODUTO_ID'
    Left = 57
    Top = 88
    object IBDataSetProdutoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"PRODUTO"."IDPRODUTO"'
      Required = True
    end
    object IBDataSetProdutoCODBARRAS: TIBStringField
      FieldName = 'CODBARRAS'
      Origin = '"PRODUTO"."CODBARRAS"'
      Required = True
      Size = 50
    end
    object IBDataSetProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBDataSetProdutoQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PRODUTO"."QTDE"'
      Required = True
    end
    object IBDataSetProdutoVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = '"PRODUTO"."VALORVENDA"'
      Required = True
    end
    object IBDataSetProdutoVALORCOMPRA: TFloatField
      FieldName = 'VALORCOMPRA'
      Origin = '"PRODUTO"."VALORCOMPRA"'
    end
    object IBDataSetProdutoICMS: TFloatField
      FieldName = 'ICMS'
      Origin = '"PRODUTO"."ICMS"'
    end
    object IBDataSetProdutoIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"PRODUTO"."IPI"'
    end
    object IBDataSetProdutoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PRODUTO"."MARCA"'
      Size = 50
    end
    object IBDataSetProdutoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PRODUTO"."MODELO"'
      Size = 50
    end
    object IBDataSetProdutoLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PRODUTO"."LOCAL"'
      Size = 50
    end
    object IBDataSetProdutoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PRODUTO"."OBSERVACAO"'
      Size = 50
    end
    object IBDataSetProdutoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PRODUTO"."TIPO"'
      Size = 10
    end
  end
  object DataSourceProduto: TDataSource
    DataSet = IBDataSetProduto
    Left = 57
    Top = 144
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase
    Left = 200
    Top = 8
  end
  object DataSourceVendasGeralItensTemp: TDataSource
    Left = 208
    Top = 144
  end
  object IBDataSetVendasGeralItensTemp: TIBDataSet
    Left = 208
    Top = 88
  end
  object DataSourceVendaGeralTemp: TDataSource
    DataSet = IBDataSetVendaGeralTemp
    Left = 368
    Top = 144
  end
  object IBDataSetVendaGeralTemp: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from VENDAGERAL_TEMP'
      'where'
      '  IDCLIENTE = :OLD_IDCLIENTE and'
      '  NUMNOTA = :OLD_NUMNOTA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into VENDAGERAL_TEMP'
      
        '  (DATAVENDA, DESCONTO, IDCLIENTE, NUMNOTA, SERIE, STATUS, VALOR' +
        'TOTALNOTA)'
      'values'
      
        '  (:DATAVENDA, :DESCONTO, :IDCLIENTE, :NUMNOTA, :SERIE, :STATUS,' +
        ' :VALORTOTALNOTA)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMNOTA,'
      '  SERIE,'
      '  IDCLIENTE,'
      '  STATUS,'
      '  DESCONTO,'
      '  VALORTOTALNOTA,'
      '  DATAVENDA'
      'from VENDAGERAL_TEMP '
      'where'
      '  IDCLIENTE = :IDCLIENTE and'
      '  NUMNOTA = :NUMNOTA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * from VENDAGERAL_TEMP')
    ModifySQL.Strings = (
      'update VENDAGERAL_TEMP'
      'set'
      '  DATAVENDA = :DATAVENDA,'
      '  DESCONTO = :DESCONTO,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  NUMNOTA = :NUMNOTA,'
      '  SERIE = :SERIE,'
      '  STATUS = :STATUS,'
      '  VALORTOTALNOTA = :VALORTOTALNOTA'
      'where'
      '  IDCLIENTE = :OLD_IDCLIENTE and'
      '  NUMNOTA = :OLD_NUMNOTA and'
      '  SERIE = :OLD_SERIE')
    Left = 368
    Top = 88
    object IBDataSetVendaGeralTempNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      Origin = '"VENDAGERAL_TEMP"."NUMNOTA"'
    end
    object IBDataSetVendaGeralTempSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"VENDAGERAL_TEMP"."SERIE"'
      Size = 3
    end
    object IBDataSetVendaGeralTempIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"VENDAGERAL_TEMP"."IDCLIENTE"'
    end
    object IBDataSetVendaGeralTempSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"VENDAGERAL_TEMP"."STATUS"'
      Size = 15
    end
    object IBDataSetVendaGeralTempDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"VENDAGERAL_TEMP"."DESCONTO"'
    end
    object IBDataSetVendaGeralTempVALORTOTALNOTA: TFloatField
      FieldName = 'VALORTOTALNOTA'
      Origin = '"VENDAGERAL_TEMP"."VALORTOTALNOTA"'
    end
    object IBDataSetVendaGeralTempDATAVENDA: TIBStringField
      FieldName = 'DATAVENDA'
      Origin = '"VENDAGERAL_TEMP"."DATAVENDA"'
      Size = 8
    end
  end
end
