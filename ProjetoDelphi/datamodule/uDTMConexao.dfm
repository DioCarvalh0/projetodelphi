object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 228
  Width = 619
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=True')
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    HostName = 'DC-DEV-003-MV\SERVERCURSO'
    Port = 1433
    Database = 'vendas'
    User = ''
    Password = ''
    Protocol = 'mssql'
    LibraryLocation = 'C:\Users\devmv\Documents\ProjetoDelphi\ntwdblib.dll'
    Left = 32
    Top = 24
  end
  object qryScriptUsuarios: TZQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'IF OBJECT_ID ('#39'usuarios'#39') IS NULL'
      'BEGIN'
      #9'Create table usuarios ('
      #9#9'usuarioId int identity(1,1) not null,'
      #9#9'nome varchar(50) not null,'
      #9#9'senha varchar(40) not null,'
      #9#9
      #9#9'PRIMARY KEY (usuarioId)'
      #9#9')'
      'END;')
    Params = <>
    Left = 208
    Top = 152
  end
end
