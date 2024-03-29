program DJApplication;

uses
  Vcl.Forms,
  ViewFrm in 'ViewFrm.pas' {ViewForm},
  BeatModelIntf in 'BeatModelIntf.pas',
  BeatObserverIntf in 'BeatObserverIntf.pas',
  BPMObserverIntf in 'BPMObserverIntf.pas',
  ControllerIntf in 'ControllerIntf.pas',
  BeatController in 'BeatController.pas',
  BeatModel in 'BeatModel.pas',
  ControllerFrm in 'ControllerFrm.pas' {ControllerForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  var ControllerForm: TForm := TControllerForm.Create(Application);
  Application.CreateForm(TControllerForm, ControllerForm);
  Application.Run;
end.
