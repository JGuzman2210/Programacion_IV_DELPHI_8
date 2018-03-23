unit FrmFactorialUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Math;

type
  TFrmFactorial = class(TForm)
    Label1: TLabel;
    NumeroEdit: TEdit;
    Button1: TButton;
    FactorialListBox: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFactorial: TFrmFactorial;

implementation

{$R *.dfm}

procedure TFrmFactorial.Button1Click(Sender: TObject);
  var
    num:Extended;
    acumulador:Extended  ;
    I:Integer;
begin
  num := StrToInt(NumeroEdit.Text);

  //Generando el Cubo
  //num := Power(num,3);
  //Generando el Cuadrado
  //num := Power(num,2);

  acumulador := 1;
  I := 1;
  FactorialListBox.Clear;

  while I <= num  do
    begin
      acumulador := acumulador * I;
      FactorialListBox.Items.Add(FloatToStr(acumulador));
      I := I + 1;
    end;

end;

end.
