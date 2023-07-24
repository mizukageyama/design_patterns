unit StateIntf;

interface

type
  IState = interface
    procedure InsertQuarter;
    procedure EjectQuarter;
    procedure TurnCrank;
    procedure Dispense;
    function ToString: string;
  end;

implementation

end.
