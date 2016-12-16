unit UCtrlVenda;

interface
uses UVenda,Classes,UDaoVenda;
type TCtrlVenda = class

      private

      protected
        FUmaVenda:TVenda;
        FUmaDaoVenda:TDaoVenda;

      public
        procedure SalvarVenda(vVenda:TVenda);
        function SalvarVendaTemp(vVenda:TVenda):string;

        function getPeriodoVenda(vPeriodoI:string; vPeriodoII:string):TList;
        procedure FecharCaixa(vPeriodo:string);
        procedure AbrirCaixa(vUser:integer);

        constructor Criar;
        destructor Destruir;


end;

implementation

{ TCtrlVenda }

procedure TCtrlVenda.AbrirCaixa(vUser: integer);
begin

end;

constructor TCtrlVenda.Criar;
begin
     FUmaDaoVenda:=TDaoVenda.Create;
end;

destructor TCtrlVenda.Destruir;
begin

end;

procedure TCtrlVenda.FecharCaixa(vPeriodo: string);
begin

end;

function TCtrlVenda.getPeriodoVenda(vPeriodoI, vPeriodoII: string): TList;
begin

end;

procedure TCtrlVenda.SalvarVenda(vVenda: TVenda);
begin

end;

function TCtrlVenda.SalvarVendaTemp(vVenda: TVenda):string;
begin
 Result:=  FUmaDaoVenda.SalvarVendaTemp(vVenda);
end;

end.
