unit UFrmFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmmae, StdCtrls, Buttons, ExtCtrls, pngimage,MaskUtils;

type
  TFrmFornecedor = class(TForm_mae)
    Panel2: TPanel;
    imageclose: TImage;
    Label7: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    lblcpf: TLabeledEdit;
    GroupBox1: TGroupBox;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    Label1: TLabel;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    procedure imagecloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedor: TFrmFornecedor;

implementation

{$R *.dfm}

procedure TFrmFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  self.btnexcluir.Visible:=false;


end;

procedure TFrmFornecedor.imagecloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
