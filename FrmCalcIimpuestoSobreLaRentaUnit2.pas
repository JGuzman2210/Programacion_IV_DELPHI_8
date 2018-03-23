unit FrmCalcIimpuestoSobreLaRentaUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Math;

type
  TFrmCalcImpuestoSobreLaRenta = class(TForm)
    SueldoMensualEdit: TEdit;
    Label1: TLabel;
    CalcImpuestoButton: TButton;
    Label2: TLabel;
    ImpuestoMensualEdit: TEdit;
    lbImpuesto: TLabel;
    procedure CalcImpuestoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//CREANDO CONSTANTES
const
  SEGURO_FAMILIAR = 3.04;
  AFP = 2.87;
var
  FrmCalcImpuestoSobreLaRenta: TFrmCalcImpuestoSobreLaRenta;

implementation

{$R *.dfm}

procedure TFrmCalcImpuestoSobreLaRenta.CalcImpuestoButtonClick(Sender: TObject);
  var
    sueldoNeto:Currency;
    sueldoMensual:Currency;
    sueldoAnual:Currency;
    escala:Currency;
    montoNuevo:Currency;
    tasa:Currency;
    impuestoAnual:Currency;
    acumulado:Currency;
    impuestoMensual:Currency;
begin
       //RESET
       sueldoNeto :=0;
       sueldoMensual := 0;
       sueldoAnual := 0;
       escala :=0;
       montoNuevo := 0;
       tasa := 0;
       impuestoAnual := 0;
       acumulado := 0;
       impuestoMensual := 0;


     //SUELDO MENSUAL
     sueldoMensual := StrToCurr(SueldoMensualEdit.Text);

     //SUELDO NETO
     sueldoNeto := sueldoMensual - (((sueldoMensual * SEGURO_FAMILIAR) / 100) + ((sueldoMensual * AFP) / 100));

     //SUELDO ANUAL
     sueldoAnual := sueldoNeto * 12;

     //ESCALA
      // Rentas desde RD$416,220.01 hasta RD$624,329.00
      //15% del excedente de RD$416,220.01
     if (sueldoAnual >= 416220.01 ) and (sueldoAnual <=624329) then
      begin
          //SE LE APLICA UN 15 %
          escala := 416220.01;

          montoNuevo := sueldoAnual - escala;
          tasa := montoNuevo * 0.15;
          acumulado := 0;
          impuestoAnual  := acumulado + tasa;
          impuestoMensual := impuestoAnual / 12;
          lbImpuesto.Caption := '15 %';
      end
      //Rentas desde RD$624,329.01 hasta RD$867,123.00
      //RD$31,216.00 más el 20% del excedente de RD$624,329.01
     else if (sueldoAnual >= 624329.01) or (sueldoAnual <= 867123) then
      begin

        //SE LE APLICA UN 20%
          escala := 624329.01;

          montoNuevo := sueldoAnual - escala;
          tasa := montoNuevo * 0.20;
          acumulado := 0;
          impuestoAnual  := acumulado + tasa;
          impuestoMensual := impuestoAnual / 12;
          lbImpuesto.Caption := '20 %';
      end
      //Rentas desde  RD$867,123.01 en adelante
      //RD$79,776.00 más el 25% del excedente de RD$867,123.01
     else if sueldoNeto >= 867123.01 then
        begin

          //SE LE APLICA UN 25%
          escala := 867123.01;

          montoNuevo := sueldoAnual - escala;
          tasa := montoNuevo * 0.25;
          acumulado := 0;
          impuestoAnual  := acumulado + tasa;
          impuestoMensual := impuestoAnual / 12;
          lbImpuesto.Caption := '25 %';
        end;



     if impuestoMensual > 0 then
        begin
          ImpuestoMensualEdit.Text := (' RD$ ' + FloatToStr(RoundTo(impuestoMensual,-2)));
           SueldoMensualEdit.SetFocus;
        end
     else
      begin
        lbImpuesto.Caption := '';
        ImpuestoMensualEdit.Text := '';
        ShowMessage('No Paga Impuesto');
      end;


end;

end.
