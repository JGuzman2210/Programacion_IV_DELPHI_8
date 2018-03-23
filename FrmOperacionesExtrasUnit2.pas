unit FrmOperacionesExtrasUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmOperacionesExtras = class(TForm)
    CheckBox1: TCheckBox;
    AreaCuboCheckBox: TCheckBox;
    AreaRectanguloCheckBox: TCheckBox;
    AreaCuadradoCheckBox: TCheckBox;
    AreaCilindroCheckBox: TCheckBox;
    AreaCirculoCheckBox: TCheckBox;
    LbNum1: TLabel;
    LbNum2: TLabel;
    Num1Edit: TEdit;
    Num2Edit: TEdit;
    BtnButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BtnButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOperacionesExtras: TFrmOperacionesExtras;

implementation

{$R *.dfm}

procedure TFrmOperacionesExtras.BtnButtonClick(Sender: TObject);
  var num1,num2,result:Extended;
begin
  //AREA TRIANGULO
  if   CheckBox1.Checked then
        begin
          num1 := StrToFloat(Num1Edit.Text); //BASE
          num2 := StrToFloat(Num2Edit.Text); // ALTURA

          result := (num1 * num2) /2;
        end
  else if AreaCirculoCheckBox.Checked then
       begin

       end
  else if AreaCilindroCheckBox.Checked then
      begin

      end
  else if AreaCuadradoCheckBox.Checked then
      begin

      end
  else if AreaRectanguloCheckBox.Checked then
       begin

       end
  else if AreaCuboCheckBox.Checked then
       begin

       end;
end;

procedure TFrmOperacionesExtras.CheckBox1Click(Sender: TObject);
begin
  LbNum1.Caption := 'Base';
  LbNum2.Caption := 'Altura';
end;

procedure TFrmOperacionesExtras.FormCreate(Sender: TObject);
begin
  //OPERACIONES
  //
end;

end.
