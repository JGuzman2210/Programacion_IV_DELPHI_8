unit FrmCalcularDosFechasUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,System.DateUtils;

type
  TCalcularDosFechasForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    FInicioDateTimePicker: TDateTimePicker;
    FFinDateTimePicker: TDateTimePicker;
    LimpiarButton: TButton;
    CalcularButton: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DiasEdit: TEdit;
    MesesEdit: TEdit;
    AnosEdit: TEdit;
    procedure CalcularButtonClick(Sender: TObject);
    procedure LimpiarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalcularDosFechasForm: TCalcularDosFechasForm;

implementation

{$R *.dfm}

procedure TCalcularDosFechasForm.CalcularButtonClick(Sender: TObject);
var
  initYear,initMoth,initDay : Word;
var
  endYear,endMoth,endDay : Word;
begin
  DecodeDate(FInicioDateTimePicker.Date,initYear,initMoth,initDay);
  DecodeDate(FFinDateTimePicker.Date,endYear,endMoth,endDay);

  if (endYear < initYear) then
    begin
        ShowMessage('Fecha final no puede ser menor que la inicio');
    end
  else if(initYear = endYear) and (endMoth < initMoth) then
    begin
        ShowMessage('La fecha final es inferior a la inicial');
    end
  else if(initYear = endYear) and (endMoth = initMoth) and (endDay < initDay) then
    begin
        ShowMessage('La fecha final es inferior a la inicial');
    end
  else if (initYear = endYear) and (initMoth = endMoth) and (initDay = endDay) then
    begin
        ShowMessage('Las fechas son iguales');
    end
  else
    begin
      DiasEdit.Text := IntToStr(DaysBetween(FInicioDateTimePicker.DateTime,FFinDateTimePicker.DateTime));
      MesesEdit.Text := IntToStr(MonthsBetween(FInicioDateTimePicker.DateTime,FFinDateTimePicker.DateTime));
      AnosEdit.Text := IntToStr(YearsBetween(FInicioDateTimePicker.DateTime,FFinDateTimePicker.DateTime));

    end
end;

procedure TCalcularDosFechasForm.LimpiarButtonClick(Sender: TObject);
begin
  DiasEdit.Text := '';
  MesesEdit.Text := '';
  AnosEdit.Text := '';
  FInicioDateTimePicker.Date := Date;
  FFinDateTimePicker.Date := Date;
  FInicioDateTimePicker.SetFocus;

end;

end.
