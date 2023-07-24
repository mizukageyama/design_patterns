unit HeartAdapter;

interface

uses BeatModelIntf, HeartModelIntf, BeatObserverIntf, BPMObserverIntf;

type
  THeartAdapter = class(TInterfacedObject, IBeatModel)
  private
    FHeart: IHeartModel;
  public
    procedure TurnOn;
    procedure TurnOff;
    procedure SetBPM(BPM: Integer);
    function GetBPM: Integer;
    procedure RegisterObserver(O: IBeatObserver); overload;
    procedure RemoveObserver(O: IBPMObserver); overload;
    procedure RegisterObserver(O: IBPMObserver); overload;
    procedure RemoveObserver(O: IBeatObserver); overload;
  end;

implementation

{ THeartAdapter }

function THeartAdapter.GetBPM: Integer;
begin
  Result := FHeart.GetHeartRate;
end;

procedure THeartAdapter.RegisterObserver(O: IBPMObserver);
begin
  FHeart.RegisterObserver(O);
end;

procedure THeartAdapter.RegisterObserver(O: IBeatObserver);
begin
  FHeart.RegisterObserver(O);
end;

procedure THeartAdapter.RemoveObserver(O: IBPMObserver);
begin
  FHeart.RemoveObserver(O);
end;

procedure THeartAdapter.RemoveObserver(O: IBeatObserver);
begin
  FHeart.RemoveObserver(O);
end;


procedure THeartAdapter.SetBPM(BPM: Integer);
begin

end;

procedure THeartAdapter.TurnOff;
begin

end;

procedure THeartAdapter.TurnOn;
begin

end;

end.
