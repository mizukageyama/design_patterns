unit SoldOutState;

interface

uses
  StateIntf, GumballMachineWithState;

type
  TSoldOutState = class(TInterfacedObject, IState)
  private
    FGumballMachine: TGumballMachineWithState;
  public
    constructor Create(AGumballMachine: TGumballMachineWithState);
    procedure InsertQuarter;
    procedure EjectQuarter;
    procedure TurnCrank;
    procedure Dispense;
    function ToString: string; override;
  end;

implementation

{ TSoldOutState }

constructor TSoldOutState.Create(AGumballMachine: TGumballMachineWithState);
begin
  FGumballMachine := AGumballMachine;
end;

procedure TSoldOutState.Dispense;
begin
  WriteLn('No gumball dispensed');
end;

procedure TSoldOutState.EjectQuarter;
begin
  WriteLn('You can''t eject, you haven''t inserted a quarter yet');
end;

procedure TSoldOutState.InsertQuarter;
begin
  WriteLn('You can''t insert a quarter, the machine is sold out');
end;

function TSoldOutState.ToString: string;
begin
		Result := 'sold out';
end;

procedure TSoldOutState.TurnCrank;
begin
  WriteLn('You turned, but there are no gumballs');
end;

end.

