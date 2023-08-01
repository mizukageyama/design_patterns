unit GumballMachineIntf;

interface

uses
  StateIntf;

type
  IGumballMachine = interface
    procedure InsertQuarter;
    procedure EjectQuarter;
    procedure TurnCrank;
    procedure SetState(State: IState);
    procedure ReleaseBall;
    function GetCount: Integer;
    function GetLocation: string;
    procedure Refill(Count: Integer);
    function GetState: string;
    function GetSoldOutState: IState;
    function GetNoQuarterState: IState;
    function GetHasQuarterState: IState;
    function GetWinnerState: IState;
    function GetSoldState: IState;
    function ToString: string;
  end;

implementation

end.

