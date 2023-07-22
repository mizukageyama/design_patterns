unit ControllerIntf;

interface

type
  IController = interface
    procedure Start;
    procedure Stop;
    procedure IncreaseBPM;
    procedure DecreaseBPM;
    procedure SetBPM(BPM: Integer);
  end;

implementation

end.
