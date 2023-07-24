unit BeatController;

interface

uses
  ControllerIntf, BeatModelIntf, Forms, ControllerFrm, VCL.Dialogs,
  System.SysUtils;

type
  TBeatController = class(TInterfacedObject, IController)
  private
    FModel: IBeatModel;
    FControllerView: TControllerForm;
  public
    constructor Create(Owner: TControllerForm; AModel: IBeatModel);
    procedure Start;
    procedure Stop;
    procedure IncreaseBPM;
    procedure DecreaseBPM;
    procedure SetBPM(BPM: Integer);
  end;

implementation

{ TBeatController }

constructor TBeatController.Create(Owner: TControllerForm; AModel: IBeatModel);
begin
  FModel := AModel;
  FControllerView := Owner;
  FControllerView.DisableStop;
  FControllerView.EnableStart;
  FControllerView.DisableSet;
end;

procedure TBeatController.DecreaseBPM;
begin
  SetBPM(FModel.getBPM - 1);
end;

procedure TBeatController.IncreaseBPM;
begin
  SetBPM(FModel.getBPM + 1);
end;

procedure TBeatController.SetBPM(BPM: Integer);
begin
  if BPM = 0 then
    Stop;
  FModel.SetBPM(BPM);
end;

procedure TBeatController.Start;
begin
  FModel.TurnOn;
  FControllerView.DisableStart;
  FControllerView.EnableStop;
  FControllerView.EnableSet;
end;

procedure TBeatController.Stop;
begin
  FModel.TurnOff;
  FControllerView.EnableStart;
  FControllerView.DisableStop;
  FControllerView.DisableSet;
end;

end.
