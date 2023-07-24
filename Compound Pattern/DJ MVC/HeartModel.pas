unit HeartModel;

interface

uses
  BeatModelIntf, BeatObserverIntf, BPMObserverIntf, System.Generics.Collections,
  VCL.Dialogs, HeartModelIntf, System.Math;

type
  TBeatModel = class(TInterfacedObject, IHeartModel)
  private
    FBPM: Integer;
    FTime: Integer;
    FBeatObservers: TList<IBeatObserver>;
    FBPMObservers: TList<IBPMObserver>;
  public
    constructor Create;
    function GetHeartRate: Integer;
    procedure RegisterObserver(O: IBeatObserver); overload;
    procedure RemoveObserver(O: IBPMObserver); overload;
    procedure RegisterObserver(O: IBPMObserver); overload;
    procedure RemoveObserver(O: IBeatObserver); overload;
    procedure NotifyObservers;
  end;
implementation

{ TBeatModel }

constructor TBeatModel.Create;
begin
  FBPM := 90;
  FTime := 1000;
end;

function TBeatModel.GetHeartRate: Integer;
begin
  Result := Round(60000/FTime);
end;

procedure TBeatModel.NotifyObservers;
begin
  for var Beat in FBeatObservers do
    Beat.UpdateBeat;

  for var BPM in FBPMObservers do
    BPM.UpdateBPM;
end;

procedure TBeatModel.RegisterObserver(O: IBPMObserver);
begin
  FBPMObservers.Add(O);
end;

procedure TBeatModel.RegisterObserver(O: IBeatObserver);
begin
  FBeatObservers.Add(O);
end;

procedure TBeatModel.RemoveObserver(O: IBeatObserver);
begin
  FBeatObservers.Remove(O);
end;

procedure TBeatModel.RemoveObserver(O: IBPMObserver);
begin
  FBPMObservers.Remove(O);
end;

end.
