unit FrmEcuacionSegundoGradoUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Math;

type
  TFrmEcuacionSegundoGrado = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    AEdit: TEdit;
    BEdit: TEdit;
    CEdit: TEdit;
    EcuacionButton: TButton;
    Label4: TLabel;
    Label5: TLabel;
    X1Edit: TEdit;
    X2Edit: TEdit;
    Label6: TLabel;
    procedure EcuacionButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEcuacionSegundoGrado: TFrmEcuacionSegundoGrado;

implementation

{$R *.dfm}

procedure TFrmEcuacionSegundoGrado.EcuacionButtonClick(Sender: TObject);
  var
    _a,_b,_c,result,result2,x1,x2:Extended;
begin
  _a := StrToFloat(AEdit.Text);
  _b := StrToFloat(BEdit.Text);
  _c := StrToFloat(CEdit.Text);

  result := Sqr(Power(_b,2) - (4 * (_a * _b)));
  _b := (-(_b));
  result2 := 2 * _a;

  x1 := (_b + result) / result2;
  x2 := (_b - result) / result2;

  X1Edit.Text := FloatToStr(x1);
  X2Edit.Text := FloatToStr(x2);

end;

end.
