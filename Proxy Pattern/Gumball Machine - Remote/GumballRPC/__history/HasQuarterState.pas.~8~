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
  WriteLn('A gumball comes rolling out the slot...', 'ReleaseBall');
  WriteLn('No gumball dispensedd', 'ReleaseBall');
end;

procedure THasQuarterState.EjectQuarter;
begin
  FGumballMachine.SetState(FGumballMachine.GetNoQuarterState);
  WriteLn('Quarter returned', 'EjectQuarter');
end;

procedure THasQuarterState.InsertQuarter;
begin
  WriteLn('You can''t insert another quarter', 'InsertQuarter');
end;

function THasQuarterState.ToString: string;
begin
		Result := 'waiting for turn of crank';
end;

procedure THasQuarterState.TurnCrank;
begin
  WriteLn('You turned...', 'TurnCrank');

  Randomize;
  var Winner: Integer := Random(10);

  if (Winner = 0) and (FGumballMachine.GetCount > 1) then
    FGumballMachine.SetState(FGumballMachine.GetWinnerState)
  else
    FGumballMachine.SetState(FGumballMachine.GetSoldState);
end;

end.
