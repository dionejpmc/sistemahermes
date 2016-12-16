unit UDaoProduto;

interface
uses UProduto, DB, SysUtils,SysConst,Controls, Dialogs,DateUtils, UDAO;
  type TDaoProduto = class (TDao)


    public
      function Salvar(Objeto: TProduto): string;
      function Carregar(Objeto: TProduto):String;
      constructor Create; override;
      destructor Destroy;

  end;

implementation

{ TDaoProduto }

function TDaoProduto.Carregar(Objeto: TProduto): String;
var SQL, MSG:string;
    UmProduto:TProduto;
begin
    UmProduto:= Objeto;
    try
        if not FDM.IBDataSetProduto.Active then
        begin
          FDM.IBDataSetProduto.Active := True;
          FDM.IBDataSetProduto.Open;
        end;


        SQL := 'SELECT * FROM PRODUTO WHERE IDPRODUTO=' + Inttostr(UmProduto.IdProduto);

        FDM.IBDataSetProduto.Close;
        FDM.IBDataSetProduto.SelectSQL.Clear;
        FDM.IBDataSetProduto.SelectSQL.Add(SQL);
        FDM.IBDataSetProduto.Open;

        UmProduto.IdProduto:=  FDM.IBDataSetProdutoIDPRODUTO.Value;
        UmProduto.CodBarrasProduto:=  FDM.IBDataSetProdutoCODBARRAS.Value;
        UmProduto.DescricaoProduto:=  FDM.IBDataSetProdutoDESCRICAO.Value;
        UmProduto.ValorVendaProduto:=  FDM.IBDataSetProdutoVALORVENDA.Value;
        UmProduto.Localizacao:=FDM.IBDataSetProdutoLOCAL.Value;

    except
        MSG:='ERRO AO CARREGAR OBJETO, OBJETO PODE NAO TER SIDO ENCONTRADO.';
    end;
    Result:=MSG;

end;

constructor TDaoProduto.Create;
begin
 inherited;

end;

destructor TDaoProduto.Destroy;
begin
 inherited;

end;

function TDaoProduto.Salvar(Objeto: TProduto): string;
var SQL, MSG:String;
    UmProduto:TProduto;
begin
    UmProduto:=Objeto;
    try
    if not FDM.IBTransaction1.Active then
     begin
         FDM.IBTransaction1.Active:=True;
         FDM.IBTransaction1.StartTransaction;
     end;
     if not FDM.IBDataSetProduto.Active then
     begin
        FDM.IBDataSetProduto.Active:=True;
        FDM.IBDataSetProduto.Open;
     end;
     if (UmProduto.IdProduto  = 0) then
     begin

         FDM.IBDataSetProduto.Insert;

         FDM.IBDataSetProdutoDESCRICAO.Value := UmProduto.DescricaoProduto;
         FDM.IBDataSetProdutoCODBARRAS.Value := UmProduto.CodBarrasProduto;
         FDM.IBDataSetProdutoQTDE.Value := UmProduto.QtdeProduto;
         FDM.IBDataSetProdutoVALORVENDA.Value := StrToFloat(FormatFloat('#0,00', UmProduto.ValorVendaProduto));
         FDM.IBDataSetProdutoLOCAL.Value:=UmProduto.Localizacao;
         FDM.IBDataSetProdutoIPI.Value:=StrToFloat(FormatFloat('#0,00',UmProduto.IPI));
         FDM.IBDataSetProdutoICMS.Value:=StrToFloat(FormatFloat('#0,00',UmProduto.ICMS));
         FDM.IBDataSetProdutoMARCA.Value:=UmProduto.Marca;
         FDM.IBDataSetProdutoMODELO.Value:=UmProduto.Modelo;
         FDM.IBDataSetProdutoTIPO.Value:=UmProduto.TipoMedida;
         FDM.IBDataSetProdutoOBSERVACAO.Value:=UmProduto.Obs;

         FDM.IBDataSetProduto.Post;
     end
     else
     begin
        SQL := 'SELECT * FROM PRODUTO WHERE IDPRODUTO=' + Inttostr(UmProduto.IdProduto);

        FDM.IBDataSetProduto.Close;
        FDM.IBDataSetProduto.SelectSQL.Clear;
        FDM.IBDataSetProduto.SelectSQL.Add(SQL);
        FDM.IBDataSetProduto.Open;
        FDM.IBDataSetProduto.Edit;
        if UmProduto.IdProduto <> FDM.IBDataSetProdutoIDPRODUTO.Value then
        begin
            FDM.IBTransaction1.RollbackRetaining;
            MSG:='ERRO AO SALVAR PRODUTO';
        end;

        FDM.IBDataSetProdutoDESCRICAO.Value := UmProduto.DescricaoProduto;
        FDM.IBDataSetProdutoCODBARRAS.Value := UmProduto.CodBarrasProduto;
        FDM.IBDataSetProdutoQTDE.Value := UmProduto.QtdeProduto;
        FDM.IBDataSetProdutoVALORVENDA.Value := UmProduto.ValorVendaProduto;
        //FDM.IBDataSetProdutoVALORVENDA.Value:=StrToFloat(FormatFloat('#0.00',UmProduto.ValorVenda));

        FDM.IBDataSetProduto.Post;
     end;

     FDM.IBTransaction1.CommitRetaining;
     MSG:='PRODUTO SALVO COM SUCESSO';
  except
     FDM.IBTransaction1.RollbackRetaining;
     MSG:='ERRO AO SALVAR PRODUTO';

  end;
  Result:=MSG;

end;

end.
