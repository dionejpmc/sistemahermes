unit UCtrlProduto;

interface

uses UDaoProduto, UProduto;

Type
  TCtrlProduto = Class

  public
    UmaDaoProduto: TDaoProduto;

    function Salvar(Objeto: TProduto): string;
    function Carregar(Objeto: TProduto):String;

    constructor Criar;
    Destructor Destruir;
  End;

implementation

{ TCtrlProduto }

function TCtrlProduto.Carregar(Objeto: TProduto): String;
begin
  Result:= UmaDaoProduto.Carregar(Objeto);
end;

constructor TCtrlProduto.Criar;
begin
     UmaDaoProduto:= TDaoProduto.Create;
end;

destructor TCtrlProduto.Destruir;
begin
     UmaDaoProduto.Destroy;
end;

function TCtrlProduto.Salvar(Objeto: TProduto): string;
begin
    Result:= UmaDaoProduto.Salvar(Objeto);
end;

end.
