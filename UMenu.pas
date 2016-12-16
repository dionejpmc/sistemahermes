unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage, UfrmCaixa,Ufrmproduto, UFrmFornecedor;

type
  TMenu = class(TForm)
    imageproduto: TImage;
    imagevenda: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Label5: TLabel;
    Image4: TImage;
    Label6: TLabel;
    Image6: TImage;
    Label8: TLabel;
    Image7: TImage;
    Label9: TLabel;
    Panel1: TPanel;
    imageclose: TImage;
    Label7: TLabel;
    procedure imagecloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imagevendaClick(Sender: TObject);
    procedure imageprodutoClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }

  protected
    UmFrmcaixa: TFrmCaixa;
    UmFrmProduto :TFrmProduto;
    UmFrmFornecedor:TFrmFornecedor;
  public
    { Public declarations }
    procedure CarregaFormularios();
  end;
implementation

{$R *.dfm}

procedure TMenu.CarregaFormularios;
begin
     UmFrmcaixa:=TFrmCaixa.Create(nil);
     UmFrmProduto:= TFrmProduto.Create(nil);
     UmFrmFornecedor:=TFrmFornecedor.Create(nil);
end;

procedure TMenu.FormCreate(Sender: TObject);
begin
  self.CarregaFormularios;
end;

procedure TMenu.Image2Click(Sender: TObject);
begin
  UmFrmFornecedor.ShowModal;
end;

procedure TMenu.imagecloseClick(Sender: TObject);
begin
  Self.Close;
  UmFrmcaixa.Free;
  UmFrmProduto.Free;
end;

procedure TMenu.imageprodutoClick(Sender: TObject);
begin
  UmFrmProduto.btneditar.Visible:=false;
  UmFrmProduto.btnexcluir.Visible:=false;
  UmFrmProduto.ShowModal;
end;

procedure TMenu.imagevendaClick(Sender: TObject);
begin
  UmFrmcaixa.ShowModal;
end;

end.
