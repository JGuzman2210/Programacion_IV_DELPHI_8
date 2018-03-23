unit FrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditUsuario: TEdit;
    EditContracena: TEdit;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses FrmPrincipal;

procedure TFormLogin.Button1Click(Sender: TObject);
begin
  FormLogin.Close;
end;

procedure TFormLogin.Button2Click(Sender: TObject);
begin

  if (EditUsuario.Text = 'jguzman') and (EditContracena.Text = '1234') then
    begin

      FormPrincipal.ShowModal;
      Timer1.Enabled :=true;
    end
  else
    begin
      ShowMessage('Debe ingresar las credenciales correctamente');

      EditUsuario.Text := '';
      EditContracena.Text := '';
      EditUsuario.SetFocus;
    end;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
//  EditUsuario.Text := 'jguzman';
//  EditContracena.Text := '1234';
end;

procedure TFormLogin.Timer1Timer(Sender: TObject);
begin
  FormLogin.Hide;
end;

end.
