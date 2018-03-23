unit FrmCalcularDosTiemposUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,System.DateUtils;

type
  TCalcularDosTiemposForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    InicioTiempoDateTimePicker: TDateTimePicker;
    FinTiempoDateTimePicker: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    HorasEdit: TEdit;
    MinutosEdit: TEdit;
    SegundosEdit: TEdit;
    GenerarButton: TButton;
    LimpiarButton: TButton;
    procedure GenerarButtonClick(Sender: TObject);
    procedure LimpiarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalcularDosTiemposForm: TCalcularDosTiemposForm;

implementation

{$R *.dfm}

procedure TCalcularDosTiemposForm.GenerarButtonClick(Sender: TObject);
begin
    HorasEdit.Text := IntToStr(HoursBetween(InicioTiempoDateTimePicker.DateTime,FinTiempoDateTimePicker.DateTime));
    MinutosEdit.Text := IntToStr(MinutesBetween(InicioTiempoDateTimePicker.DateTime,FinTiempoDateTimePicker.DateTime));
    SegundosEdit.Text := IntToStr(SecondsBetween(InicioTiempoDateTimePicker.DateTime,FinTiempoDateTimePicker.DateTime));
end;

procedure TCalcularDosTiemposForm.LimpiarButtonClick(Sender: TObject);
begin
  HorasEdit.Text := '';
  MinutosEdit.Text := '';
  SegundosEdit.Text := '';

  InicioTiempoDateTimePicker.DateTime := Now;
  FinTiempoDateTimePicker.DateTime := Now;

end;

end.
