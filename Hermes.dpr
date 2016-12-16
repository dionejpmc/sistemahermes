program Hermes;
uses
  Forms,
  Windows,
  UMenu in 'UMenu.pas' {Menu},
  UExecutar in 'UExecutar.pas',
  UInterface in 'UInterface.pas',
  ufrmcaixa in 'ufrm\ufrmcaixa.pas',
  ufrmcliente in 'ufrm\ufrmcliente.pas',
  ufrmproduto in 'ufrm\ufrmproduto.pas' {FrmProduto},
  ufrmmae in 'ufrm\ufrmmae.pas' {Form_mae},
  UProduto in 'class\UProduto.pas',
  UCtrlProduto in 'controller\UCtrlProduto.pas',
  UDaoProduto in 'dao\UDaoProduto.pas',
  UDAO in 'dao\UDAO.pas',
  UDM in 'UDM.pas' {DataModule1: TDataModule},
  UVenda in 'class\UVenda.pas',
  UClasseMae in 'class\UClasseMae.pas',
  UCtrlVenda in 'controller\UCtrlVenda.pas',
  UDaoVenda in 'dao\UDaoVenda.pas',
  URelatorioProdutos in 'ufrm\URelatorioProdutos.pas' {Form1},
  UFrmFornecedor in 'ufrm\UFrmFornecedor.pas' {FrmFornecedor};

{$R *.res}
var UmExecutar:TExecutar;

begin
  UmExecutar:=TExecutar.Criar;
  UmExecutar.Executar;
  UmExecutar.Destruir;
  //  Application.Initialize;
   // Application.MainFormOnTaskbar := True;
    //Application.CreateForm(TMenu, Menu);
   // Application.Run;
end.
