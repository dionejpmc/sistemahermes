unit UVenda;

interface
uses Classes, UProduto,UClassemae;
type
  TVenda = class(TObject)

  private

  protected
    FNumNota:integer;
    FSerie:string;
    FUmaListaProduto:TList;
    FDesconto:Double;
    FValorTotalVenda:Double;
    FDataVenda:string;

  public
    procedure setNumNota(vNumNota:integer);
    procedure setSerie(vSerie:string);
    procedure setUmaListaProduto(vUmaListaProduto:TList);
    procedure setDesconto(vDesconto:Double);
    procedure setValorTotalVenda(vValorTotalVenda:Double);
    procedure setDataVenda(vDataVenda:String);

    function getNumNota:integer;
    function getSerie:string;
    function getUmaListaProduto:TList;
    function getDesconto:Double;
    function getValorTotalVenda:Double;
    function getDataVenda:string;

     property NumNota:integer read getNumNota write setNumNota;
     property Serie:string read getSerie write setSerie ;
     property UmaListaProduto:Tlist read getUmaListaProduto  write setUmaListaProduto;
     property Desconto:Double read getDesconto  write setDesconto;
     property ValorTotalVenda:Double read getValorTotalVenda  write setValorTotalVenda ;
     property DataVenda:string read getDataVenda  write setDataVenda;

  end;

implementation

{ Venda }

function TVenda.getDataVenda: string;
begin
    Result:= FDataVenda;
end;

function TVenda.getDesconto: Double;
begin
   Result:=FDesconto;
end;

function TVenda.getNumNota: integer;
begin
   Result:=FNumNota;
end;

function TVenda.getSerie: string;
begin
   Result:= FSerie;
end;

function TVenda.getUmaListaProduto: TList;
begin
   Result:= FUmaListaProduto;
end;

function TVenda.getValorTotalVenda: Double;
begin
 Result:=FValorTotalVenda;
end;

procedure TVenda.setDataVenda(vDataVenda: String);
begin
    FDataVenda:= vDataVenda;
end;

procedure TVenda.setDesconto(vDesconto: Double);
begin
   FDesconto:=vDesconto;
end;

procedure TVenda.setNumNota(vNumNota: integer);
begin
   FNumNota:=vNumNota;
end;

procedure TVenda.setSerie(vSerie: string);
begin
   FSerie:=vSerie;
end;

procedure TVenda.setUmaListaProduto(vUmaListaProduto: TList);
begin
  FUmaListaProduto:=vUmaListaProduto;
end;

procedure TVenda.setValorTotalVenda(vValorTotalVenda: Double);
begin
   FValorTotalVenda:=vValorTotalVenda;
end;

end.
