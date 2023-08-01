unit NoQuarterState;

interface

uses
  StateIntf, GumballMachine, MVCFramework.Logger;

type
  TNoQuarterState = class(TInterfacedObject, IState)
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

{ NoQuarterState }

constructor TNoQuarterState.Create(AGumballMachine: TGumballMachine);
begin
  FGumballMachine := AGumballMachine;
end;

procedure TNoQuarterState.Dispense;
begin
   WriteLn('You need to pay first', '');
end;

procedure TNoQuarterState.EjectQuarter;
begin
   WriteLn('You haven''t inserted a quarter', '');
end;

procedure TNoQuarterState.InsertQuarter;
begin
  WriteLn('You inserted a quarter', '');
  FGumballMachine.SetState(FGumballMachine.GetHasQuarterState);
end;

function TNoQuarterState.ToString: string;
begin
		Result := 'waiting for quarter';
end;

procedure TNoQuarterState.TurnCrank;
begin
   WriteLn('You turned, but there''s no quarter', '');
end;

end.

