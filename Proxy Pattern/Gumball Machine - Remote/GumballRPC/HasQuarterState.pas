unit HasQuarterState;

interface

uses
  StateIntf, GumballMachine, MVCFramework.Logger;

type
  THasQuarterState = class(TInterfacedObject, IState)
  private
    FGumballMachine: TGumballMachine;
  public
    constructor Create(AGumballMachine: TGumballMachine);
    procedure InsertQuarter;
    procedure EjectQuarter;
    procedure TurnCrank;
    procedure Dispense;
    function ToString: string; override;
  end;

implementation

{ THasQuarterState }

constructor THasQuarterState.Create(AGumballMachine: TGumballMachine);
begin
  FGumballMachine := AGumballMachine;
end;

procedure THasQuarterState.Dispense;
begin
  WriteLn(FGumballMachine.FLocation +
    ': A gumball comes rolling out the slot...');
  WriteLn('No gumball dispensedd');
end;

procedure THasQuarterState.EjectQuarter;
begin
  FGumballMachine.SetState(FGumballMachine.GetNoQuarterState);
  WriteLn(FGumballMachine.FLocation + ': Quarter returned');
end;

procedure THasQuarterState.InsertQuarter;
begin
  WriteLn(FGumballMachine.FLocation + ': You can''t insert another quarter');
end;

function THasQuarterState.ToString: string;
begin
		Result := 'waiting for turn of crank';
end;

procedure THasQuarterState.TurnCrank;
begin
  WriteLn(FGumballMachine.FLocation + ': You turned...');

  Randomize;
  var Winner: Integer := Random(10);

  if (Winner = 0) and (FGumballMachine.GetCount > 1) then
    FGumballMachine.SetState(FGumballMachine.GetWinnerState)
  else
    FGumballMachine.SetState(FGumballMachine.GetSoldState);
end;

end.
