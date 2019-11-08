program CalculatorProject;

uses
  Vcl.Forms,
  SysUtils,
  Calculator in 'Calculator.pas' {Frm_Principal},
  splashScreen in 'splashScreen.pas' {Frm_Splash};

{$R *.res}

begin
 Frm_Splash := TFrm_Splash.Create(Application);
 try
  Frm_Splash.Show;
  Frm_Splash.Update;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  //Aguarda 2 segundos (opcional)
  Sleep(2000);
 finally
  FreeAndNil(Frm_Splash);
 end;
  Application.Run;
end.
