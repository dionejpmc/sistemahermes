unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, ComCtrls, StdCtrls, jpeg, ufrmproduto, ufrmcaixa;

type
  TMenu = class(TForm)
    Panel1: TPanel;
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
    imageclose: TImage;
    Label7: TLabel;
    Image6: TImage;
    Label8: TLabel;
    Image7: TImage;
    Label9: TLabel;
    procedure imagecloseClick(Sender: TObject);
    procedure imageprodutoClick(Sender: TObject);
    procedure imagevendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FrmProduto: TFrmProduto;
    FrmCaixa:TFrmCaixa;
  end;

var
  FrmMenu: TMenu;

  var x: Double;

implementation

{$R *.dfm}


procedure TMenu.FormCreate(Sender: TObject);
begin
  Self.Visible:= true;
end;

procedure TMenu.imagecloseClick(Sender: TObject);
begin
    FrmProduto.Destroy;
   self.Destroy;

end;

procedure TMenu.imageprodutoClick(Sender: TObject);
begin
  FrmProduto.showmodal;
  FrmProduto.Close;
end;

procedure TMenu.imagevendaClick(Sender: TObject);
begin
  FrmCaixa.ShowModal;
  FrmCaixa.Close;
end;

end.
