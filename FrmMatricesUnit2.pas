unit FrmMatricesUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMatrices = class(TForm)
    GenerarButton: TButton;
    MatricesListBox: TListBox;
    SumaButton: TButton;
    RestaButton: TButton;
    DivisionButton: TButton;
    MultiplicacionButton: TButton;
    ResultadoListBox: TListBox;
    procedure GenerarButtonClick(Sender: TObject);
    procedure ProcesarOperacion(op:Integer);
    procedure SumaButtonClick(Sender: TObject);
    procedure RestaButtonClick(Sender: TObject);
    procedure DivisionButtonClick(Sender: TObject);
    procedure MultiplicacionButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
   SUMA = 1;
   RESTA = 2;
   DIVISION = 3;
   MULTIPLICACION = 4;
var
  FrmMatrices: TFrmMatrices;
  matrice : Array[1..3,1..3] of integer;

implementation

{$R *.dfm}

procedure TFrmMatrices.ProcesarOperacion(op:Integer);
 var
  x: Integer;
  I:integer;
  result:Extended;
  display:string;
begin
  ResultadoListBox.Clear;
   case op of
    1:  //SUMA
      begin
        for I := 1 to 3 do
          begin
            //FILA Y COLUMNA
            result:= matrice[1,I] + matrice[2,I] + matrice[3,I];
            display := IntToStr(matrice[1,I]) +
                      ' + ' +  IntToStr(matrice[2,I]) +
                      ' + ' +  IntToStr(matrice[3,I]) +
                      ' = ' + FloatToStr(result);
            ResultadoListBox.Items.Add(display)
          end;
      end;
    2: //RESTA
      begin
        for I := 1 to 3 do
          begin
            //FILA Y COLUMNA
            result:= (matrice[1,I] - matrice[2,I]) - matrice[3,I];
            display := IntToStr(matrice[1,I]) +
                      ' - ' +  IntToStr(matrice[2,I]) +
                      ' - ' +  IntToStr(matrice[3,I]) +
                      ' = ' + FloatToStr(result);
            ResultadoListBox.Items.Add(display)
          end;
      end;
    3:  //DIVISION
      begin
          for I := 1 to 3 do
            begin
              //FILA Y COLUMNA
              result:= (matrice[1,I] / matrice[2,I]) / matrice[3,I];
              display := IntToStr(matrice[1,I]) +
                      ' / ' +  IntToStr(matrice[2,I]) +
                      ' / ' +  IntToStr(matrice[3,I]) +
                      ' = ' + FloatToStr(result);
            ResultadoListBox.Items.Add(display)
            end;
      end;
    4:  //MULTIPLICACION
      begin
          for I := 1 to 3 do
            begin
              //FILA Y COLUMNA
              result:= (matrice[1,I] * matrice[2,I]) * matrice[3,I];
              display := IntToStr(matrice[1,I]) +
                      ' x ' +  IntToStr(matrice[2,I]) +
                      ' x ' +  IntToStr(matrice[3,I]) +
                      ' = ' + FloatToStr(result);
            ResultadoListBox.Items.Add(display)
            end;
      end;
   end;

end;


procedure TFrmMatrices.RestaButtonClick(Sender: TObject);
begin
    ProcesarOperacion(RESTA);

end;

procedure TFrmMatrices.SumaButtonClick(Sender: TObject);
begin
ProcesarOperacion(SUMA);
end;

procedure TFrmMatrices.DivisionButtonClick(Sender: TObject);
begin
ProcesarOperacion(DIVISION);

end;

procedure TFrmMatrices.GenerarButtonClick(Sender: TObject);
  var
  x: Integer;
  I:integer;
  msg1:string;
  value:string;
begin
    MatricesListBox.Clear;
    ResultadoListBox.Clear;
     for I := 1 to 3 do
      begin
        for x := 1 to 3 do
           begin
              msg1 := 'Posicion de la matrix ' + IntToStr(I) +
                      ' x ' + IntToStr(x);
              value := InputBox(msg1,'Ingrese un numero valido','');
              matrice[I,x] := StrToInt(value);
              MatricesListBox.Items.Add(IntToStr(I) + ',' + IntToStr(x) + ' :: ' + value);
           end;
      end;
end;

procedure TFrmMatrices.MultiplicacionButtonClick(Sender: TObject);
begin
ProcesarOperacion(MULTIPLICACION);
end;

end.
