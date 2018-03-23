unit FrmCalcularPrestamoUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Math, Vcl.Grids;

type
  TFrmCalcularPrestamo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MontoPrestadoEdit: TEdit;
    TasaEdit: TEdit;
    PlazoEdit: TEdit;
    CalcularButton: TButton;
    LimpiarButton: TButton;
    TablaAmortizacionListBox: TListBox;
    procedure CalcularButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalcularPrestamo: TFrmCalcularPrestamo;

implementation

{$R *.dfm}

procedure TFrmCalcularPrestamo.CalcularButtonClick(Sender: TObject);
var interesAnual:Extended;
    interesMensual:Double;
    montoPrestamo:Double;
    tiempo:Extended;
   cuota:Double;
  I: Integer;
  x: Integer;
  output:string;
  calc_capital:double;
  calc_interes:double;
  calc_balance:double;
  finicio:TDateTime;
begin
    montoPrestamo := StrToFloat(MontoPrestadoEdit.Text);
    interesAnual := StrToInt(TasaEdit.Text) / 12;
    interesMensual := interesAnual / 100;
    tiempo := StrToInt(PlazoEdit.Text);

    cuota := montoPrestamo * ((Power((1+interesMensual),tiempo) * interesMensual) / (Power((1+interesMensual),tiempo) -1 ));

    //TablaAmortizacionListBox
    //TABLA DE AMORTIZACION
    //ELEMENTOS
    // MESES  | FECHA PAGO | COUTA | CAPITAL | INTERES | BALANCE
    TablaAmortizacionListBox.Clear;
    calc_balance :=montoPrestamo;
    TablaAmortizacionListBox.Items.Add('PAGO || COUTA || CAPITAL || INTERES || BALANCE ');

    for I := 1 to StrToInt(PlazoEdit.Text) do

      begin
        calc_capital :=0;
        calc_interes :=0;

        calc_interes := calc_balance * interesMensual;
        calc_capital := cuota - calc_interes;
        calc_balance := calc_balance -  calc_capital;

        //'PAGO | COUTA | CAPITAL | INTERES | BALANCE '
        output := IntToStr(I) +
                  ' ||  ' +  FormatFloat('RD$ #,###.##',cuota) +
                  ' ||  ' +  FormatFloat('RD$ #,###.##',calc_capital) +
                  ' ||  ' +  FormatFloat('RD$ #,###.##',calc_interes)  +
                  ' ||  ' +  FormatFloat('RD$ #,###.##',calc_balance);

        TablaAmortizacionListBox.Items.Add(output);
      end;
end;

end.
