unit ufrmproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmmae, StdCtrls, Buttons, ExtCtrls, pngimage,UProduto,UCtrlProduto;

type
  TFrmProduto = class(TForm_mae)
    cod: TLabeledEdit;
    descricao: TLabeledEdit;
    venda: TLabeledEdit;
    qtde: TLabeledEdit;
    Panel2: TPanel;
    imageclose: TImage;
    Label1: TLabel;
    codbarra: TLabeledEdit;
    RGTipoMedida: TRadioGroup;
    rbkg: TRadioButton;
    rbml: TRadioButton;
    rbun: TRadioButton;
    edtmarca: TLabeledEdit;
    edtmodelo: TLabeledEdit;
    edtlocalizacao: TLabeledEdit;
    GroupBox1: TGroupBox;
    edticms: TLabeledEdit;
    edtipi: TLabeledEdit;
    edtvalorcompra: TLabeledEdit;
    edtobs: TLabeledEdit;
    procedure imagecloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vendaKeyPress(Sender: TObject; var Key: Char);
    procedure edticmsKeyPress(Sender: TObject; var Key: Char);
    procedure edtipiKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    UmProduto:TProduto;
    UmaCtrlProduto:TCtrlProduto;
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

procedure TFrmProduto.BitBtn1Click(Sender: TObject);
var MSG:string;
begin
  inherited;
  if (Length(Self.descricao.Text) >= 3) and (Length(Self.codbarra.Text) >= 3)  then
  begin
      UmProduto.IdProduto:=0;
      UmProduto.DescricaoProduto:= Self.descricao.Text;
      UmProduto.CodBarrasProduto:= Self.codbarra.Text;
      UmProduto.QtdeProduto:=StrToFloat(Self.qtde.Text);
      UmProduto.ValorVendaProduto:= StrToFloat(Self.venda.Text);
      UmProduto.ValorCompra:=StrToFloat(Self.edtvalorcompra.Text);
      UmProduto.IPI:=StrToFloat(Self.edtipi.Text);
      UmProduto.ICMS:=StrToFloat(Self.edticms.Text);
      UmProduto.Localizacao:=Self.edtlocalizacao.Text;
      UmProduto.Marca:=Self.edtmarca.Text;
      UmProduto.Modelo:=Self.edtmodelo.Text;
      UmProduto.Obs:=Self.edtobs.Text;
      if Self.rbkg.Checked then
        UmProduto.TipoMedida:='Kg'
      else if Self.rbml.Checked then
        UmProduto.TipoMedida:='Mililitro'
      else if Self.rbun.Checked then
        UmProduto.TipoMedida:='Unidades'
      else
      begin
         ShowMessage('SELECIONE UMA UNIDADE DE MEDIDA.');
         Exit;
      end;
      MSG:= UmaCtrlProduto.Salvar(UmProduto);
      ShowMessage(MSG);
  end
  else
    ShowMessage('OS CAMPOS COM * S�O OBRIGAT�RIOS.');
end;

procedure TFrmProduto.edticmsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

procedure TFrmProduto.edtipiKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
  inherited;
  UmProduto:=TProduto.Create;
  UmaCtrlProduto:=TCtrlProduto.Criar;
end;

procedure TFrmProduto.imagecloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
  UmProduto.Destroy;
  UmaCtrlProduto.Destruir;
end;

procedure TFrmProduto.vendaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

end.
