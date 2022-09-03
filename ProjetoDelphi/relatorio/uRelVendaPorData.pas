unit uRelVendaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMConexao, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RLFilters, RLPDFFilter,
  RLReport, RLXLSXFilter, RLXLSFilter;

type
  TfrmRelVendaPorData = class(TForm)
    qryVenda: TZQuery;
    dtsVenda: TDataSource;
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    Rodape: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    RLXLSXFilter1: TRLXLSXFilter;
    BandaDeGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    codigo: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw3: TRLDraw;
    RLLabel9: TRLLabel;
    qryVendavendaId: TIntegerField;
    qryVendaclienteId: TIntegerField;
    qryVendanome: TWideStringField;
    qryVendadataVenda: TDateTimeField;
    qryVendatotalVenda: TFloatField;
    RLBand5: TRLBand;
    RLDBResult2: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel5: TRLLabel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendaPorData: TfrmRelVendaPorData;

implementation

{$R *.dfm}

procedure TfrmRelVendaPorData.FormDestroy(Sender: TObject);
begin
  qryVenda.Close;
end;

end.
