unit uDTMVenda;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Datasnap.DBClient;

type
  TdtmVendas = class(TDataModule)
    qryCliente: TZQuery;
    qryClienteclienteId: TIntegerField;
    qryClientenome: TWideStringField;
    qryProdutos: TZQuery;
    qryProdutosprodutoId: TIntegerField;
    qryProdutosnome: TWideStringField;
    qryProdutosvalor: TFloatField;
    qryProdutosquantidade: TFloatField;
    cdsItensVenda: TClientDataSet;
    dtsCliente: TDataSource;
    dtsProdutos: TDataSource;
    dtsItensVenda: TDataSource;
    cdsItensVendaprodutoId: TIntegerField;
    cdsItensVendaNomeProduto: TStringField;
    cdsItensVendaquantidade: TFloatField;
    cdsItensVendavalorUnitario: TFloatField;
    cdsItensVendavalorTotalProduto: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVendas: TdtmVendas;

implementation

uses
  uDTMConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmVendas.DataModuleCreate(Sender: TObject);
begin
  cdsItensVenda.CreateDataSet;

  qryCliente.Open;
  qryProdutos.Open;
end;

procedure TdtmVendas.DataModuleDestroy(Sender: TObject);
begin
  cdsItensVenda.Close;

  qryCliente.Close;
  qryProdutos.Close;
end;

end.
