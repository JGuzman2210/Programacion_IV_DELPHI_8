unit FrmIndiceAcademicoUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmIndiceAcademico = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditCalificacion: TEdit;
    Label3: TLabel;
    EditCreditos: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ListBoxCalificaciones: TListBox;
    ListBoxCreditos: TListBox;
    ButtonAgregar: TButton;
    ButtonLimpiar: TButton;
    Label6: TLabel;
    EditResultadoIndice: TEdit;
    procedure ButtonAgregarClick(Sender: TObject);
    procedure ButtonLimpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIndiceAcademico: TFrmIndiceAcademico;

implementation

{$R *.dfm}

procedure TFrmIndiceAcademico.ButtonAgregarClick(Sender: TObject);
var
  calificacion:Integer;
  creditos:Integer;
  cregeneral:Integer;
  indiceFinal:Double;
  cont:Integer;
  tempCali:Integer;
  tempCredi:Integer;
begin
  calificacion := StrToInt(EditCalificacion.Text);
  creditos := StrToInt(EditCreditos.Text);

    if (calificacion = 0) or (calificacion > 100) then
    begin
      ShowMessage('Ingrese un valor mayor a cero y/o menor a 100');
      EditCalificacion.SetFocus;
    end
  else if (creditos = 0) then
    begin
      ShowMessage('Creditos Invalidos, Debe ingresar creditos desde 1 a 3');
      EditCreditos.SetFocus;
    end
  else
    begin
       //CALCULAR EL INDICE
       ListBoxCalificaciones.Items.Add(IntToStr(calificacion));
       ListBoxCreditos.Items.Add(IntToStr(creditos));

       tempCali :=0;
       tempCredi := 0;
       indiceFinal := 0;
       cregeneral :=0;
       for cont := 0 to ListBoxCalificaciones.Items.Count - 1 do
        begin
          tempCali := StrToInt(ListBoxCalificaciones.Items[cont]);
          tempCredi := StrToInt(ListBoxCreditos.Items[cont]);

          cregeneral := cregeneral + tempCredi;
          indiceFinal := indiceFinal + (tempCali * tempCredi);
        end;
        EditResultadoIndice.Text := FormatFloat('#.##',(indiceFinal / cregeneral) / 25);
        EditCalificacion.Text := '';
        EditCreditos.Text := '';
        EditCalificacion.SetFocus;
    end



end;

procedure TFrmIndiceAcademico.ButtonLimpiarClick(Sender: TObject);
begin
  EditCalificacion.Text := '';
  EditCreditos.Text := '';
  EditResultadoIndice.Text := '';
  ListBoxCalificaciones.Items.Clear;
  ListBoxCreditos.Items.Clear;
  EditCalificacion.SetFocus;
end;

end.
