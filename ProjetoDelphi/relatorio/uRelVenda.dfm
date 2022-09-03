object frmRelVenda: TfrmRelVenda
  Left = 0
  Top = 0
  Caption = 'frmRelVenda'
  ClientHeight = 381
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 57
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 1
        Top = 16
        Width = 77
        Height = 24
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 40
        Width = 718
        Height = 17
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 281
      Width = 718
      Height = 39
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 16
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 659
        Top = 16
        Width = 29
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 696
        Top = 16
        Width = 20
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 688
        Top = 16
        Width = 17
        Height = 16
        Caption = '/'
      end
      object RLLabel3: TRLLabel
        Left = 621
        Top = 16
        Width = 53
        Height = 16
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BandaDeGrupo: TRLGroup
      Left = 38
      Top = 95
      Width = 718
      Height = 138
      DataFields = 'vendaId'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLLabel7: TRLLabel
          Left = 1
          Top = 0
          Width = 52
          Height = 16
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 59
          Top = 0
          Width = 47
          Height = 16
          DataField = 'vendaId'
          DataSource = dtsVenda
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 17
        Width = 718
        Height = 26
        object RLDBText1: TRLDBText
          Left = 20
          Top = 0
          Width = 52
          Height = 16
          Alignment = taRightJustify
          DataField = 'clienteId'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 87
          Top = 0
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 652
          Top = 0
          Width = 66
          Height = 16
          Alignment = taRightJustify
          DataField = 'dataVenda'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 1
          Top = 0
          Width = 53
          Height = 16
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 610
          Top = 0
          Width = 37
          Height = 16
          Alignment = taRightJustify
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 76
          Top = -2
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDraw3: TRLDraw
          Left = 3
          Top = 24
          Width = 718
          Height = 2
          DrawKind = dkLine
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 43
        Width = 718
        Height = 107
        DataSource = dtsVendaItens
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 16
          BandType = btHeader
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel9: TRLLabel
            Left = 1
            Top = 0
            Width = 77
            Height = 16
            Caption = 'PRODUTOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 366
            Top = 0
            Width = 88
            Height = 16
            Alignment = taRightJustify
            Caption = 'QUANTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel12: TRLLabel
            Left = 526
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Caption = 'VAL. UN.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel13: TRLLabel
            Left = 623
            Top = 0
            Width = 92
            Height = 16
            Alignment = taRightJustify
            Caption = 'TOTAL PROD.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 16
          Width = 718
          Height = 16
          object RLDBText3: TRLDBText
            Left = 15
            Top = 0
            Width = 57
            Height = 16
            Alignment = taRightJustify
            DataField = 'produtoId'
            DataSource = dtsVendaItens
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 87
            Top = 0
            Width = 36
            Height = 16
            DataField = 'nome'
            DataSource = dtsVendaItens
            Text = ''
          end
          object RLLabel8: TRLLabel
            Left = 76
            Top = -2
            Width = 8
            Height = 16
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 387
            Top = 0
            Width = 67
            Height = 16
            Alignment = taRightJustify
            DataField = 'quantidade'
            DataSource = dtsVendaItens
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 512
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'valorUnitario'
            DataSource = dtsVendaItens
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 641
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'totalProduto'
            DataSource = dtsVendaItens
            Text = ''
          end
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 233
      Width = 718
      Height = 48
      BandType = btSummary
      object RLDBResult2: TRLDBResult
        Left = 610
        Top = 8
        Width = 105
        Height = 16
        Alignment = taRightJustify
        DataField = 'totalVenda'
        DataSource = dtsVenda
        Info = riSum
        Text = ''
      end
      object RLDraw4: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 8
        DrawKind = dkLine
      end
      object RLLabel5: TRLLabel
        Left = 499
        Top = 8
        Width = 105
        Height = 16
        Caption = 'Total da Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
  end
  object qryVenda: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT  vendas.vendaId,'
      '        vendas.clienteId,'
      '        clientes.nome,'
      '        vendas.dataVenda,'
      '        vendas.totalVenda'
      '  FROM vendas'
      
        '        INNER JOIN clientes on clientes.clienteId = vendas.clien' +
        'teId'
      '  WHERE vendas.vendaId =:vendaId')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 1
      end>
    Left = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 1
      end>
    object qryVendavendaId: TIntegerField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object qryVendaclienteId: TIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object qryVendanome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object qryVendadataVenda: TDateTimeField
      FieldName = 'dataVenda'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVendatotalVenda: TFloatField
      FieldName = 'totalVenda'
      Required = True
      DisplayFormat = 'R$ ###,###,##0.00'
    end
  end
  object dtsVenda: TDataSource
    DataSet = qryVenda
    Left = 256
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 192
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 312
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 360
    Top = 8
  end
  object qryVendaItens: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT vendasItens.vendaId,'
      '        vendasItens.produtoId,'
      '        produtos.nome,'
      '        vendasItens.quantidade,'
      '        vendasItens.valorUnitario,'
      '        vendasItens.totalProduto'
      '  FROM vendasItens'
      
        '      INNER JOIN produtos on produtos.produtoId = vendasItens.pr' +
        'odutoId'
      '  WHERE vendasItens.vendaId =:vendaId'
      '  ORDER BY vendasItens.produtoId')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 1
      end>
    Left = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 1
      end>
    object qryVendaItensvendaId: TIntegerField
      FieldName = 'vendaId'
      Required = True
    end
    object qryVendaItensprodutoId: TIntegerField
      FieldName = 'produtoId'
      Required = True
    end
    object qryVendaItensnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object qryVendaItensquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qryVendaItensvalorUnitario: TFloatField
      FieldName = 'valorUnitario'
      Required = True
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object qryVendaItenstotalProduto: TFloatField
      FieldName = 'totalProduto'
      Required = True
      DisplayFormat = 'R$ ###,###,##0.00'
    end
  end
  object dtsVendaItens: TDataSource
    DataSet = qryVendaItens
    Left = 504
  end
end
