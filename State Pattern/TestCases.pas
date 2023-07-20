unit TestCases;

interface

uses
  GumballMachine, GumballMachineWithState;

type
  TTestCases = class
  public
    class procedure ExecuteSimpleGumball;
    class procedure ExecuteGumballWithStateAndWinner;
  end;


implementation

class procedure TTestCases.ExecuteSimpleGumball;
begin
  var GumballMachine := TGumballMachine.Create(5);

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.EjectQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.EjectQuarter();

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);
end;

class procedure TTestCases.ExecuteGumballWithStateAndWinner;
begin
  var GumballMachine := TGumballMachineWithState.Create(10);

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);

  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();
  GumballMachine.InsertQuarter();
  GumballMachine.TurnCrank();

  WriteLn(GumballMachine.ToString);
end;

end.
