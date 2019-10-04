unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lblC1: TLabel;
    lblF1: TLabel;
    edt1: TEdit;
    btnConv1: TButton;
    btnLimpar: TButton;
    lblF2: TLabel;
    lblC2: TLabel;
    edt3: TEdit;
    pnlFah: TPanel;
    pnlCe: TPanel;
    btnConv2: TButton;
    procedure btnConv1Click(Sender: TObject);
    procedure btnConv2Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConv1Click(Sender: TObject);
var
  num1, convert: real;
begin
  num1:=strtofloat(edt1.Text);
  convert:= (9/5*num1+32);
  pnlFah.Caption:=floattostr(convert);
  pnlFah.Caption:=formatfloat('###,###,##0.00', convert);
end;

procedure TForm1.btnConv2Click(Sender: TObject);
var
  num1, convert: real;
begin
  num1:=strtofloat(edt3.Text);
  convert:=((num1-32)*5/9);
  pnlCe.Caption:=floattostr(convert);
  pnlCe.Caption:=formatfloat('###,###,##0.00', convert);
end;

procedure TForm1.btnLimparClick(Sender: TObject);
var
  i, j: integer;
begin
 for i := 0 to Self.ControlCount - 1 do
    if (Self.Controls[i] is TEdit) then
      (Controls[i] as TEdit).Text := '';
 for j := 0 to Self.ControlCount - 1 do
    if (Self.Controls[j] is TPanel) then
      (controls[j] as TPanel).caption := '';
end;

end.
