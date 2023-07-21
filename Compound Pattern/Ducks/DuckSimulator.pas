unit DuckSimulator;

interface

uses
  QuackableIntf, DuckCall, MallardDuck, RedHeadDuck, RubberDuck, Goose,
  GooseAdapter, QuackCounter, System.SysUtils, AbstractDuckFactory, Flock,
  Quackologist;

type
  TDuckSimulator = class
  public
    procedure Simulate; overload;
    procedure Simulate(Duck: IQuackable); overload;
    procedure Simulate(DuckFactory: TAbstractDuckFactory); overload;
  end;

implementation

{ TDuckSimulator }

procedure TDuckSimulator.Simulate(Duck: IQuackable);
begin
  Duck.Quack;
end;

procedure TDuckSimulator.Simulate;
begin
  var MallardDuck: IQuackable := TQuackCounter.Create(TMallardDuck.Create);
  var RedHeadDuck: IQuackable := TQuackCounter.Create(TRedHeadDuck.Create);
  var DuckCall: IQuackable := TQuackCounter.Create(TDuckCall.Create);
  var RubberDuck: IQuackable := TQuackCounter.Create(TRubberDuck.Create);
  var GooseDuck: IQuackable := TGooseAdapter.Create(TGoose.Create);

  WriteLn(sLineBreak + 'Duck Simulator');

  Simulate(MallardDuck);
  Simulate(RedHeadDuck);
  Simulate(DuckCall);
  Simulate(RubberDuck);
  Simulate(GooseDuck);

  WriteLn('The ducks quacked ' + TQuackCounter.GetQuacks.ToString + ' times');
end;

procedure TDuckSimulator.Simulate(DuckFactory: TAbstractDuckFactory);
begin
  //Factory
  var MallardDuck: IQuackable := DuckFactory.CreateMallardDuck;
  var RedHeadDuck: IQuackable := DuckFactory.CreateRedHeadDuck;
  var DuckCall: IQuackable := DuckFactory.CreateDuckCall;
  var RubberDuck: IQuackable := DuckFactory.CreateRubberDuck;
  //Adapter
  var GooseDuck: IQuackable := TGooseAdapter.Create(TGoose.Create);

  //Composite With Iterator
  var FlockOfDucks := TFlock.Create;

  FlockOfDucks.Add(RedHeadDuck);
  FlockOfDucks.Add(DuckCall);
  FlockOfDucks.Add(RubberDuck);
  FlockOfDucks.Add(GooseDuck);

  var FlockOfMallards := TFlock.Create;

  var MallardDuckOne: IQuackable := DuckFactory.CreateMallardDuck;
  var MallardDuckTwo: IQuackable := DuckFactory.CreateMallardDuck;
  var MallardDuckThree: IQuackable := DuckFactory.CreateMallardDuck;
  var MallardDuckFour: IQuackable := DuckFactory.CreateMallardDuck;

  FlockOfMallards.Add(MallardDuckOne);
  FlockOfMallards.Add(MallardDuckTwo);
  FlockOfMallards.Add(MallardDuckThree);
  FlockOfMallards.Add(MallardDuckFour);

  FlockOfDucks.Add(FlockOfMallards);

  //Observer
  WriteLn(sLineBreak + 'Duck Simulator: With Observer');
  var Quackologist := TQuackologist.Create;
  FlockOfDucks.RegisterObserver(Quackologist);

  Simulate(FlockOfDucks);

  //Decorator (QuackCounter)
  WriteLn(sLineBreak + 'The ducks quacked ' +
    TQuackCounter.GetQuacks.ToString + ' times');
end;

end.
