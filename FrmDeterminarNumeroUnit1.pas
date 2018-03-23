unit FrmDeterminarNumeroUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmDeterminarNumero = class(TForm)
    Label1: TLabel;
    NumeroEdit: TEdit;
    AgregarButton: TButton;
    ListBoxGeneralNum: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ListBoxPares: TListBox;
    ListBoxImpares: TListBox;
    ListBoxPositivos: TListBox;
    ListBoxNegativos: TListBox;
    ListBoxPrimos: TListBox;
    Label7: TLabel;
    NumerosAgregadosEdit: TEdit;
    procedure AgregarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDeterminarNumero: TFrmDeterminarNumero;

implementation

{$R *.dfm}

procedure TFrmDeterminarNumero.AgregarButtonClick(Sender: TObject);
var num:Double;
var contador:Integer;
var tempNum:Integer;
begin
      num := StrToFloat(NumeroEdit.Text);
      if num = 0 then
        begin
          ShowMessage('Numero Neutro');
          NumeroEdit.Text := '';
          NumeroEdit.SetFocus;
        end
      else
        begin
         if (ListBoxGeneralNum.Items.Count < 50) then
            begin
              ListBoxGeneralNum.Items.Add(FloatToStr(num));
              NumeroEdit.Text := '';
              NumeroEdit.SetFocus;
            end
          else
            begin
              ShowMessage('Solo se aceptan 50 valores');
            end;
        ListBoxPares.Items.Clear;
        ListBoxImpares.Items.Clear;
        ListBoxPositivos.Items.Clear;
        ListBoxNegativos.Items.Clear;
        ListBoxPrimos.Items.Clear;
        end;

        for contador :=0 to ListBoxGeneralNum.Items.Count - 1 do
          begin
            tempNum := StrToInt(ListBoxGeneralNum.Items[contador]);

            if ((tempNum mod 2) = 0) then
              begin
                ListBoxPares.Items.Add(FloatToStr(tempNum));
              end
            else
              begin
                ListBoxImpares.Items.Add(FloatToStr(tempNum))
              end;

            if tempNum > 0 then
              begin
               ListBoxPositivos.Items.Add(FloatToStr(tempNum));
              end
            else
              begin
                ListBoxNegativos.Items.Add(FloatToStr(tempNum));
              end
          end;
          NumerosAgregadosEdit.Text := IntToStr(ListBoxGeneralNum.Items.Count)
end;

end.
