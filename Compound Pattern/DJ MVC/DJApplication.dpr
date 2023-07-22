program DJApplication;

uses
  Vcl.Forms,
  ViewFrm in 'ViewFrm.pas' {ViewForm},
  ControllerFrm in 'ControllerFrm.pas' {ControllerForm},
  BeatModelIntf in 'BeatModelIntf.pas',
  BeatObserverIntf in 'BeatObserverIntf.pas',
  BPMObserverIntf in 'BPMObserverIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewForm, ViewForm);
  Application.CreateForm(TControllerForm, ControllerForm);
  Application.Run;
end.
