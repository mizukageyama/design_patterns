unit HeartModelIntf;

interface

uses
  BeatObserverIntf, BPMObserverIntf;

type
  IHeartModel = interface ['{3EFF64D7-CA20-4FD9-A559-91CBDE5C8C24}']
    function GetHeartRate: Integer;
    procedure RegisterObserver(O: IBeatObserver); overload;
    procedure RemoveObserver(O: IBPMObserver); overload;
    procedure RegisterObserver(O: IBPMObserver); overload;
    procedure RemoveObserver(O: IBeatObserver); overload;
    procedure NotifyObservers;
  end;

implementation

end.
