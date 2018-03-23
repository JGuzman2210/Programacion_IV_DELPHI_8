unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    MainMenu: TMainMenu;
    Operaciones1: TMenuItem;
    Programas21: TMenuItem;
    MenuCalcularIndice: TMenuItem;
    MenuPromedioAcadmico: TMenuItem;
    MenuCalcularDosFechas: TMenuItem;
    MenuCalcularDosTiempos: TMenuItem;
    MenuCalculadoradePrestamo: TMenuItem;
    MenuDeterminar50Numeros: TMenuItem;
    MenuTabladeMultiplicar: TMenuItem;
    MenuFactorial: TMenuItem;
    MenuOperacionesconMatrices: TMenuItem;
    MenuCalcularImpuesto: TMenuItem;
    MenuFahrenheitCelsius: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    AcercadeMI1: TMenuItem;
    ManualdeUsuario1: TMenuItem;
    Image1: TImage;
    MenuOperacionesExtras: TMenuItem;
    MenuEcuacin2doGrado: TMenuItem;
    procedure MenuCalcularIndiceClick(Sender: TObject);
    procedure MenuPromedioAcadmicoClick(Sender: TObject);
    procedure MenuCalcularDosFechasClick(Sender: TObject);
    procedure MenuCalcularDosTiemposClick(Sender: TObject);
    procedure MenuCalculadoradePrestamoClick(Sender: TObject);
    procedure MenuDeterminar50NumerosClick(Sender: TObject);
    procedure MenuTabladeMultiplicarClick(Sender: TObject);
    procedure MenuFactorialClick(Sender: TObject);
    procedure MenuOperacionesconMatricesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuCalcularImpuestoClick(Sender: TObject);
    procedure MenuFahrenheitCelsiusClick(Sender: TObject);
    procedure MenuOperacionesExtrasClick(Sender: TObject);
    procedure MenuEcuacin2doGradoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses FrmIndiceAcademicoUnit1, FrmPromedioAcademicoUnit1,
  FrmCalcularDosFechasUnit1, FrmCalcularDosTiemposUnit1,
  FrmCalcularPrestamoUnit1, FrmDeterminarNumeroUnit1, FrmTablaMultiplicarUnit1,
  FrmFactorialUnit1, FrmMatricesUnit2, FrmLogin,
  FrmCalcIimpuestoSobreLaRentaUnit2, FrmFahrenheitCelsiusUnit2,
  FrmOperacionesExtrasUnit2, FrmEcuacionSegundoGradoUnit2;


procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmLogin.FormLogin.Close;
end;

procedure TFormPrincipal.MenuCalculadoradePrestamoClick(Sender: TObject);
begin
  FrmCalcularPrestamo.ShowModal;
end;

procedure TFormPrincipal.MenuCalcularDosFechasClick(Sender: TObject);
begin
  CalcularDosFechasForm.ShowModal;
end;

procedure TFormPrincipal.MenuCalcularDosTiemposClick(Sender: TObject);
begin
  FrmCalcularDosTiemposUnit1.CalcularDosTiemposForm.ShowModal;
end;

procedure TFormPrincipal.MenuCalcularImpuestoClick(Sender: TObject);
begin
  FrmCalcImpuestoSobreLaRenta.ShowModal;
end;

procedure TFormPrincipal.MenuCalcularIndiceClick(Sender: TObject);
begin
  FrmIndiceAcademico.ShowModal;
end;

procedure TFormPrincipal.MenuDeterminar50NumerosClick(Sender: TObject);
begin
  FrmDeterminarNumero.ShowModal;
end;

procedure TFormPrincipal.MenuEcuacin2doGradoClick(Sender: TObject);
begin
  FrmEcuacionSegundoGrado.ShowModal;
end;

procedure TFormPrincipal.MenuFactorialClick(Sender: TObject);
begin
  FrmFactorial.ShowModal;
end;

procedure TFormPrincipal.MenuFahrenheitCelsiusClick(Sender: TObject);
begin
  FrmFahrenheitCelsius.ShowModal;
end;

procedure TFormPrincipal.MenuOperacionesconMatricesClick(Sender: TObject);
begin
  FrmMatrices.ShowModal;
end;

procedure TFormPrincipal.MenuOperacionesExtrasClick(Sender: TObject);
begin
  FrmOperacionesExtras.ShowModal;
end;

procedure TFormPrincipal.MenuPromedioAcadmicoClick(Sender: TObject);
begin
  FrmPromedioAcademico.ShowModal;
end;

procedure TFormPrincipal.MenuTabladeMultiplicarClick(Sender: TObject);
begin
  FrmTablaMultiplicar.ShowModal;
end;

end.
