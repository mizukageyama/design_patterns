program DJApplication;

uses
  Vcl.Forms,
  ViewFrm in 'ViewFrm.pas' {ViewForm},
  ControllerFrm in 'ControllerFrm.pas' {ControllerForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewForm, ViewForm);
  Application.CreateForm(TControllerForm, ControllerForm);
  Application.Run;
end.
