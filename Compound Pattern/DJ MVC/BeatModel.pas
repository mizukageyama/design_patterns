unit BeatModel;

interface

uses BeatModelIntf, BeatObserverIntf, BPMObserverIntf;

type
  TBeatModel = class(TInterfacedObject, IBeatModel)
  private

  public
    procedure Initialize;
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

{ TBeatModel }

function TBeatModel.GetBPM: Integer;
begin
  Result := 1;
end;

procedure TBeatModel.Initialize;
begin

end;

procedure TBeatModel.RegisterObserver(O: IBeatObserver);
begin

end;

procedure TBeatModel.RegisterObserver(O: IBPMObserver);
begin

end;

procedure TBeatModel.RemoveObserver(O: IBPMObserver);
begin

end;

procedure TBeatModel.RemoveObserver(O: IBeatObserver);
begin

end;

procedure TBeatModel.SetBPM(BPM: Integer);
begin

end;

procedure TBeatModel.TurnOff;
begin

end;

procedure TBeatModel.TurnOn;
begin

end;

end.