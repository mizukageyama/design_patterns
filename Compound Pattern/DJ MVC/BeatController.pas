unit BeatController;

interface

uses
  ControllerIntf, BeatModelIntf, Forms;

type
  TBeatController = class(TInterfacedObject, IController)
  private
    FModel: IBeatModel;
    FDJView: TForm;
  public
    constructor Create(AModel: IBeatModel);
    procedure Start;
    procedure Stop;
    procedure IncreaseBPM;
    procedure DecreaseBPM;
    procedure SetBPM(BPM: Integer);
  end;

implementation

{ TBeatController }

uses ControllerFrm;

constructor TBeatController.Create(AModel: IBeatModel);
begin
  FModel := AModel;
  FDJView := TControllerForm.Create(Self, AModel);
  FModel.Initialize;
end;

procedure TBeatController.DecreaseBPM;
begin
  var BPM := FModel.getBPM;
  FModel.SetBPM(BPM - 1);
end;

procedure TBeatController.IncreaseBPM;
begin
  var BPM := FModel.getBPM;
  FModel.SetBPM(BPM + 1);
end;

procedure TBeatController.SetBPM(BPM: Integer);
begin
  FModel.SetBPM(BPM);
end;

procedure TBeatController.Start;
begin
  FModel.TurnOn;
  //FDJView.DisableStart;
end;

procedure TBeatController.Stop;
begin
//
end;

end.