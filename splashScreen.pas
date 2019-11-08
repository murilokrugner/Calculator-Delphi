unit splashScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Splash = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Splash: TFrm_Splash;

implementation

{$R *.dfm}

end.
