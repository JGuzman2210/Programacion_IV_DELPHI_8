unit FrmPromedioAcademicoUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPromedioAcademico = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditCalificacion: TEdit;
    ButtonAgregar: TButton;
    ButtonLimpiar: TButton;
    ListBoxCalificaciones: TListBox;
    Label3: TLabel;
    EditPromedioFinal: TEdit;
    Label4: TLabel;
    EditRegistroAgregado: TEdit;
    procedure ButtonAgregarClick(Sender: TObject);
    procedure ButtonLimpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  FrmPromedioAcademico: TFrmPromedioAcademico;

implementation

{$R *.dfm}


//CUSTOM FUNCTION
function GetResultadoPromedio(calificacion: Double) : String;
var cal :Integer;
begin
  cal := trunc(calificacion);

 if(cal >= 90) and (cal <= 100) then
    begin
       Result := 'A';
    end
 else if (cal >= 80) and (cal <= 89) then
    begin
      Result := 'B';
    end
  else if (cal >= 70) and (cal <= 79) then
    begin
      Result := 'C';
    end
  else if (cal >= 60) and (cal <= 69) then
    begin
       Result := 'D';
    end
  else
    begin
       Result := 'F';
    end
end;







procedure TFrmPromedioAcademico.ButtonAgregarClick(Sender: TObject);
  var promedio:Integer;
  var contador:Integer;
  var promeNumerico:Double;
begin
   promedio := StrToInt(EditCalificacion.Text);

   if (promedio = 0) or (promedio > 100) then
      begin
        ShowMessage('Ingrese un valor mayor a cero y/o menor a 100');
      end
   else
    begin
      //Agregar el valor a listBox
      if ListBoxCalificaciones.Items.Count < 100 then
        begin
          ListBoxCalificaciones.Items.Add(EditCalificacion.Text);
          EditCalificacion.Text := '';
          //Calcular el promedio
          For contador:=0 to ListBoxCalificaciones.Items.Count - 1 do
            begin
              promeNumerico := promeNumerico + StrToFloat(ListBoxCalificaciones.Items[contador]);
            end;
            EditPromedioFinal.Text := GetResultadoPromedio(promeNumerico / ListBoxCalificaciones.Items.Count);
        end
      else
        begin
           ShowMessage('Llego al limite de calificaciones');
        end

    end;
  EditCalificacion.SetFocus();
  EditRegistroAgregado.Text := IntToStr(ListBoxCalificaciones.Items.Count)
end;

procedure TFrmPromedioAcademico.ButtonLimpiarClick(Sender: TObject);
begin
  ListBoxCalificaciones.Items.Clear;
  EditCalificacion.Text := '';
  EditPromedioFinal.Text := '';
  EditRegistroAgregado.Text := '';
  EditCalificacion.SetFocus;
end;

end.
