unit SoldState;

interface

uses
  StateIntf, GumballMachineWithState;

type
  TSoldState = class(TInterfacedObject, IState)
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

{ TSoldState }

constructor TSoldState.Create(AGumballMachine: TGumballMachineWithState);
begin
  FGumballMachine := AGumballMachine;
end;

procedure TSoldState.Dispense;
begin
  FGumballMachine.ReleaseBall;
  if FGumballMachine.GetCount > 0 then
    FGumballMachine.SetState(FGumballMachine.GetNoQuarterState)
  else
  begin
    WriteLn('Oops, out of gumballs!');
    FGumballMachine.SetState(FGumballMachine.GetSoldOutState);
  end;
end;

procedure TSoldState.EjectQuarter;
begin
  WriteLn('Sorry, you already turned the crank');
end;

procedure TSoldState.InsertQuarter;
begin
  WriteLn('Please wait, we''re already giving you a gumball');
end;

function TSoldState.ToString: string;
begin
		Result := 'dispensing a gumball';
end;

procedure TSoldState.TurnCrank;
begin
  WriteLn('Turning twice doesn''t get you another gumball!');
end;

end.

