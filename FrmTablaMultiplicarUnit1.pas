unit FrmTablaMultiplicarUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ExtCtrls;

type
  TFrmTablaMultiplicar = class(TForm)
    TablaCheckListBox: TCheckListBox;
    TablaResultListBox: TListBox;
    SeleccionRadioGroup: TRadioGroup;
    AscRadioButton: TRadioButton;
    DescRadioButton: TRadioButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TablaCheckListBoxClickCheck(Sender: TObject);
    procedure GenerarTablas();
    procedure AscRadioButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmTablaMultiplicar: TFrmTablaMultiplicar;

implementation

{$R *.dfm}

procedure TFrmTablaMultiplicar.GenerarTablas();
var
  I: Integer;
  X: Integer;
  var
  contador:Integer;
  num:Integer;
begin
      TablaResultListBox.Clear;
  if DescRadioButton.Checked then
    begin
      for I := 0 to TablaCheckListBox.Items.Count - 1 do
        begin
          if TablaCheckListBox.Checked[I] then
          begin
            num := StrToInt(TablaCheckListBox.Items[I]);
            TablaResultListBox.Items.Add('======================');
            TablaResultListBox.Items.Add('Tabla ' + IntToStr(num));
            TablaResultListBox.Items.Add('======================');
            contador :=12;
            while contador > 0 do
              begin
                 TablaResultListBox.Items.Add(IntToStr(num) +
                 ' X ' + IntToStr(contador) +
                 ' = ' + IntToStr((num * contador)));
                 contador := contador - 1;
              end;

          end;
        end;
    end
  else if AscRadioButton.Checked then
       begin
         for I := 0 to TablaCheckListBox.Items.Count - 1 do
          begin
            if TablaCheckListBox.Checked[I] then
              begin
                num := StrToInt(TablaCheckListBox.Items[I]);
                TablaResultListBox.Items.Add('======================');
                TablaResultListBox.Items.Add('Tabla ' + IntToStr(num));
                TablaResultListBox.Items.Add('======================');
                for X := 1 to 12 do
                  begin
                    TablaResultListBox.Items.Add(IntToStr(num) + ' X ' + IntToStr(X) + ' = ' + IntToStr((num * x)))
                  end;
              end;
          end;
       end;
end;



procedure TFrmTablaMultiplicar.AscRadioButtonClick(Sender: TObject);
begin
  GenerarTablas();
end;

procedure TFrmTablaMultiplicar.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  TablaCheckListBox.Clear;
  for I := 1 to 12 do
    begin
      TablaCheckListBox.Items.Add(IntToStr(I));
    end;
end;





procedure TFrmTablaMultiplicar.TablaCheckListBoxClickCheck(Sender: TObject);

begin
     GenerarTablas();
end;

end.
