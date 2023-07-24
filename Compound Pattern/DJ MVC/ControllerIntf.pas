unit ControllerIntf;

interface

type
  IController = interface ['{A166224C-6182-496B-922D-B0E360EA408C}']
    procedure Start;
    procedure Stop;
    procedure IncreaseBPM;
    procedure DecreaseBPM;
    procedure SetBPM(BPM: Integer);
  end;

implementation

end.
