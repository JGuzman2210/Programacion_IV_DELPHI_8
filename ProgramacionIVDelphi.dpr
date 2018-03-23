program ProgramacionIVDelphi;

uses
  Vcl.Forms,
  FrmLogin in 'FrmLogin.pas' {FormLogin},
  FrmPrincipal in 'FrmPrincipal.pas' {FormPrincipal},
  FrmIndiceAcademicoUnit1 in 'FrmIndiceAcademicoUnit1.pas' {FrmIndiceAcademico},
  FrmPromedioAcademicoUnit1 in 'FrmPromedioAcademicoUnit1.pas' {FrmPromedioAcademico},
  FrmCalcularDosFechasUnit1 in 'FrmCalcularDosFechasUnit1.pas' {CalcularDosFechasForm},
  FrmCalcularDosTiemposUnit1 in 'FrmCalcularDosTiemposUnit1.pas' {CalcularDosTiemposForm},
  FrmCalcularPrestamoUnit1 in 'FrmCalcularPrestamoUnit1.pas' {FrmCalcularPrestamo},
  FrmDeterminarNumeroUnit1 in 'FrmDeterminarNumeroUnit1.pas' {FrmDeterminarNumero},
  FrmTablaMultiplicarUnit1 in 'FrmTablaMultiplicarUnit1.pas' {FrmTablaMultiplicar},
  FrmFactorialUnit1 in 'FrmFactorialUnit1.pas' {FrmFactorial},
  FrmMatricesUnit2 in 'FrmMatricesUnit2.pas' {FrmMatrices},
  FrmCalcIimpuestoSobreLaRentaUnit2 in 'FrmCalcIimpuestoSobreLaRentaUnit2.pas' {FrmCalcImpuestoSobreLaRenta},
  FrmFahrenheitCelsiusUnit2 in 'FrmFahrenheitCelsiusUnit2.pas' {FrmFahrenheitCelsius},
  FrmOperacionesExtrasUnit2 in 'FrmOperacionesExtrasUnit2.pas' {FrmOperacionesExtras},
  FrmEcuacionSegundoGradoUnit2 in 'FrmEcuacionSegundoGradoUnit2.pas' {FrmEcuacionSegundoGrado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFrmIndiceAcademico, FrmIndiceAcademico);
  Application.CreateForm(TFrmPromedioAcademico, FrmPromedioAcademico);
  Application.CreateForm(TCalcularDosFechasForm, CalcularDosFechasForm);
  Application.CreateForm(TCalcularDosTiemposForm, CalcularDosTiemposForm);
  Application.CreateForm(TFrmCalcularPrestamo, FrmCalcularPrestamo);
  Application.CreateForm(TFrmDeterminarNumero, FrmDeterminarNumero);
  Application.CreateForm(TFrmTablaMultiplicar, FrmTablaMultiplicar);
  Application.CreateForm(TFrmFactorial, FrmFactorial);
  Application.CreateForm(TFrmMatrices, FrmMatrices);
  Application.CreateForm(TFrmCalcImpuestoSobreLaRenta, FrmCalcImpuestoSobreLaRenta);
  Application.CreateForm(TFrmFahrenheitCelsius, FrmFahrenheitCelsius);
  Application.CreateForm(TFrmOperacionesExtras, FrmOperacionesExtras);
  Application.CreateForm(TFrmEcuacionSegundoGrado, FrmEcuacionSegundoGrado);
  Application.Run;
end.
