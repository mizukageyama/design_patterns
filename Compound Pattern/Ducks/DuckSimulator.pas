unit DuckSimulator;

interface

uses
  QuackableIntf, DuckCall, MallardDuck, RedHeadDuck, RubberDuck, Goose,
  GooseAdapter;

type
  TDuckSimulator = class
  public
    procedure Simulate; overload;
    procedure Simulate(Duck: IQuackable); overload;
  end;

implementation

{ TDuckSimulator }

procedure TDuckSimulator.Simulate(Duck: IQuackable);
begin
  Duck.Quack;
end;

procedure TDuckSimulator.Simulate;
begin
  var MallardDuck: IQuackable := TMallardDuck.Create;
  var RedHeadDuck: IQuackable := TRedHeadDuck.Create;
  var DuckCall: IQuackable := TDuckCall.Create;
  var RubberDuck: IQuackable := TRubberDuck.Create;
  var GooseDuck: IQuackable := TGooseAdapter.Create(TGoose.Create);

  WriteLn(sLineBreak + 'Duck Simulator');

  Simulate(MallardDuck);
  Simulate(RedHeadDuck);
  Simulate(DuckCall);
  Simulate(RubberDuck);
  Simulate(GooseDuck);
end;

end.
