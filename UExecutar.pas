unit UExecutar;

interface
uses UInterface;

type
  TExecutar = class

  private

  protected

    UmaInterface:TInterface;

  public

    constructor Criar();
    destructor Destruir();
    procedure Executar;


end;

implementation

{ TExecutar }

constructor TExecutar.Criar;
begin
  UmaInterface:= TInterface.Criar;
end;

destructor TExecutar.Destruir;
begin
   UmaInterface.Destruir;
end;

procedure TExecutar.Executar;
begin
  UmaInterface.AbrirMenu;
end;

end.
