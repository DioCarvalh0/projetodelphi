unit uCadSubCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit, RxCurrEdit, cCadProdutos, uEnum, uDTMConexao, Vcl.ExtDlgs,
  System.ImageList, Vcl.ImgList, cCadSubCategoria;

type
  TfrmCadSubCategoria = class(TfrmTelaHeranca)
    qryListagemsubCatId: TIntegerField;
    qryListagemdescrSubCat: TWideStringField;
    qryListagemdescricao: TWideStringField;
    edtSubCatId: TLabeledEdit;
    edtDescSubCat: TEdit;
    Label1: TLabel;
    lkpCategoria: TDBLookupComboBox;
    Label2: TLabel;
    dtsCategoria: TDataSource;
    qryCategoria: TZQuery;
    qryCategoriacategoriaId: TIntegerField;
    qryCategoriadescricao: TWideStringField;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    oSubcategoria:TSubcategoria;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadSubCategoria: TfrmCadSubCategoria;

implementation

{$R *.dfm}

{$region 'CRUD'}

function TfrmCadSubCategoria.Apagar: Boolean;
begin
  if oSubcategoria.Selecionar(qryListagem.FieldByName('subCatId').AsInteger) then begin
    Result:=oSubcategoria.Apagar;
  end;
end;

function TfrmCadSubCategoria.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if edtSubCatId.Text<>EmptyStr then
     oSubcategoria.codigo:=StrToInt(edtSubCatId.Text)
  else
     oSubcategoria.codigo:=0;

  oSubcategoria.descrSubCat       :=edtDescSubCat.Text;
  oSubcategoria.categoriaId       :=lkpCategoria.KeyValue;

  if (EstadoDoCadastro=ecInserir) then
    Result:=oSubcategoria.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
    Result:=oSubcategoria.Atualizar;
end;

procedure TfrmCadSubCategoria.btnAlterarClick(Sender: TObject);
begin
  begin
    if oSubcategoria.Selecionar(qryListagem.FieldByName('subCatId').AsInteger) then begin
      edtSubCatId.Text:=IntToStr(oSubcategoria.codigo);
      edtDescSubCat.Text      :=oSubcategoria.descrSubCat;
      lkpCategoria.KeyValue   :=oSubcategoria.categoriaId;
    end

    else begin
      btnCancelar.Click;
      Abort;
    end;
  end;
  inherited;
end;

procedure TfrmCadSubCategoria.btnGravarClick(Sender: TObject);
begin
  inherited;

end;

{$endregion}

{$region 'Button'}

procedure TfrmCadSubCategoria.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescSubCat.SetFocus;
end;

{$endregion}

{$region 'Eventos'}

procedure TfrmCadSubCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  grdListagem.Columns.SaveToFile('C:\Users\devmv\Documents\ProjetoDelphi\savegrid\grdSubCategoria.cfg');
  qryCategoria.Close;
  if Assigned(oSubcategoria) then
    FreeAndNil(oSubcategoria);
end;

procedure TfrmCadSubCategoria.FormCreate(Sender: TObject);
begin
  inherited;
  oSubcategoria:=TSubcategoria.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:='descrSubCat';
end;

procedure TfrmCadSubCategoria.FormShow(Sender: TObject);
begin
  inherited;
  grdListagem.Columns.LoadFromFile('C:\Users\devmv\Documents\ProjetoDelphi\savegrid\grdSubCategoria.cfg');
  qryCategoria.Open;
end;

{$endregion}

end.
