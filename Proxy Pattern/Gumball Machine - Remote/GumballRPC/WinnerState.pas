unit WinnerState;

interface

uses
  StateIntf, GumballMachine, MVCFramework.Logger;

type
  TWinnerState = class(TInterfacedObject, IState)
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

{ TWinnerState }

constructor TWinnerState.Create(AGumballMachine: TGumballMachine);
begin
  FGumballMachine := AGumballMachine;
end;

procedure TWinnerState.Dispense;
begin
  WriteLn(FGumballMachine.FLocation +
    ': YOU''RE A WINNER! You get two gumballs for your quarter');
  FGumballMachine.ReleaseBall;
  if FGumballMachine.GetCount = 0 then
    FGumballMachine.SetState(FGumballMachine.GetSoldOutState)
  else
  begin
    FGumballMachine.ReleaseBall;
    if FGumballMachine.GetCount > 0 then
      FGumballMachine.SetState(FGumballMachine.GetNoQuarterState)
    else
    begin
      WriteLn(FGumballMachine.FLocation + ': Oops, out of gumballs!');
      FGumballMachine.SetState(FGumballMachine.GetSoldOutState);
    end;
  end;
end;

procedure TWinnerState.EjectQuarter;
begin
  WriteLn(FGumballMachine.FLocation + ': Quarter returned');
end;

procedure TWinnerState.InsertQuarter;
begin
  WriteLn(FGumballMachine.FLocation +
    ': Please wait, we''re already giving you a Gumball');
end;

function TWinnerState.ToString: string;
begin
  Result := 'despensing two gumballs for your quarter, ' +
    'because YOU''RE A WINNER!';
end;

procedure TWinnerState.TurnCrank;
begin
  WriteLn(FGumballMachine.FLocation +
    ': Turning again doesn''t get you another gumball!');
end;

end.

