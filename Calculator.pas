unit Calculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrm_Principal = class(TForm)
    btn_mais: TButton;
    btn_menos: TButton;
    btn_0: TButton;
    btn_3: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_4: TButton;
    btn_1: TButton;
    btn_8: TButton;
    btn_5: TButton;
    btn_2: TButton;
    btn_igual: TButton;
    edit_display: TEdit;
    edit_expression: TEdit;
    btn_c: TButton;
    btn_9: TButton;
    btn_vezes: TButton;
    btn_dividir: TButton;
    btn_apagar: TButton;
    btn_porcentagem: TButton;
    btn_virgula: TButton;
    lbl_display: TLabel;
    lbl_expression: TLabel;
    procedure btn_0Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_maisClick(Sender: TObject);
    procedure btn_menosClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_vezesClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_porcentagemClick(Sender: TObject);
    procedure btn_virgulaClick(Sender: TObject);
  private
    { Private declarations }
  public
  {     Variaveis Globais     }
    expression, point:string;
    num1, num2, porcent, result:real;
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

procedure TFrm_Principal.btn_5Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(5);
end;

procedure TFrm_Principal.btn_2Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(2);
end;

procedure TFrm_Principal.btn_igualClick(Sender: TObject);
begin
  edit_expression.Text := edit_display.Text + edit_expression.Text;

  num2 := StrToFloat(edit_display.Text);

  if expression = '+' then
    result := num1 + num2
  else if expression = '-' then
    result := num1 - num2
  else if expression = '*' then
    result := num1 * num2
  else if expression = '/' then
    result := num1 / num2
  else if expression  = '%' then
    result := porcent;

  edit_display.Text := FloatToStr(result);
end;

procedure TFrm_Principal.btn_cClick(Sender: TObject);
begin
  edit_display.Text := '0';
  edit_expression.Text := '';
end;

procedure TFrm_Principal.btn_dividirClick(Sender: TObject);
begin
  num1 := StrToInt(edit_display.Text);
  expression := '/';
  edit_expression.Text := expression + edit_display.Text;
  edit_display.Text := '';
end;

procedure TFrm_Principal.btn_9Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(9);
end;

procedure TFrm_Principal.btn_apagarClick(Sender: TObject);
var
  backSpace:string;
begin
  backSpace := copy(edit_display.Text, 1, Length(edit_display.Text) -1);

  edit_display.Text := backSpace;

end;

procedure TFrm_Principal.btn_maisClick(Sender: TObject);
begin
  num1 := StrToFloat(edit_display.Text);
  expression := '+';
  edit_expression.Text := expression + edit_display.Text;
  edit_display.Text := '';
end;

procedure TFrm_Principal.btn_menosClick(Sender: TObject);
begin
  num1 := StrToInt(edit_display.Text);
  expression := '-';
  edit_expression.Text := edit_display.Text + expression;
  edit_display.Text := '';
end;

procedure TFrm_Principal.btn_virgulaClick(Sender: TObject);
begin
  point := ',';
  edit_display.Text := edit_display.Text + ',';
end;

procedure TFrm_Principal.btn_porcentagemClick(Sender: TObject);
begin
  num2 := StrToInt(edit_display.Text);
  porcent := num1 + (num1 * num2 / 100);

  expression := '%';
  edit_expression.Text := expression + edit_display.Text;

  result := porcent - num1;

  edit_display.Text := FloatToStr(result);
end;

procedure TFrm_Principal.btn_vezesClick(Sender: TObject);
begin
  num1 := StrToInt(edit_display.Text);
  expression := '*';
  edit_expression.Text := expression + edit_display.Text;
  edit_display.Text := '';
end;

procedure TFrm_Principal.btn_0Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(0);
end;

procedure TFrm_Principal.btn_3Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(3);
end;

procedure TFrm_Principal.btn_6Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(6);
end;

procedure TFrm_Principal.btn_7Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(7);
end;

procedure TFrm_Principal.btn_4Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(4);
end;

procedure TFrm_Principal.btn_1Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(1);
end;

procedure TFrm_Principal.btn_8Click(Sender: TObject);
begin
  if edit_display.Text = '0' then
    edit_display.Text := '';

  edit_display.Text := edit_display.Text + IntToStr(8);
end;

end.
