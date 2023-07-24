unit BeatModelIntf;

interface

uses
  BeatObserverIntf, BPMObserverIntf;

type
  IBeatModel = interface ['{90E9295B-1F20-4426-9E48-3BBF65E70C19}']
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

end.
