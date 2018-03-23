unit FrmFahrenheitCelsiusUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmFahrenheitCelsius = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FahrenheitEdit: TEdit;
    FTOCButton: TButton;
    CelsiusEdit: TEdit;
    Label4: TLabel;
    CTOFButton: TButton;
    Label5: TLabel;
    Label6: TLabel;
    ResultFTOCEdit: TEdit;
    ResultCTOFEdit: TEdit;
    procedure FTOCButtonClick(Sender: TObject);
    procedure CTOFButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFahrenheitCelsius: TFrmFahrenheitCelsius;

implementation

{$R *.dfm}

procedure TFrmFahrenheitCelsius.CTOFButtonClick(Sender: TObject);
 var
    celsius,
    fahrenheit:Extended;
begin
  //Celcius a Fahrentheit
  // f = ((9/5)* c) + 32
  celsius := StrToFloat(CelsiusEdit.Text);
  fahrenheit := ((9/5) * celsius) + 32;
  ResultCTOFEdit.Text  := FormatFloat('#.###',fahrenheit);
end;

procedure TFrmFahrenheitCelsius.FTOCButtonClick(Sender: TObject);
  var
    celsius,
    fahrenheit:Extended;
begin
  //Fahrenheit a Celsius
  // c = (f - 32) * (5/9)
  fahrenheit := StrToFloat(FahrenheitEdit.Text);
  celsius := (fahrenheit - 32) * (5/9);

  ResultFTOCEdit.Text := FormatFloat('#.###',celsius);
end;

end.
