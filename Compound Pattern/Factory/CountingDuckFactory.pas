unit CountingDuckFactory;

interface

uses
  AbstractDuckFactory, QuackableIntf, DuckCall, MallardDuck, RedHeadDuck,
  RubberDuck, QuackCounter;

type
  TCountingDuckFactory = class(TAbstractDuckFactory)
  public
    function CreateMallardDuck: IQuackable; override;
    function CreateRedHeadDuck: IQuackable; override;
    function CreateDuckCall: IQuackable; override;
    function CreateRubberDuck: IQuackable; override;
  end;

implementation

{ TCountingDuckFactory }

function TCountingDuckFactory.CreateDuckCall: IQuackable;
begin
  Result := TQuackCounter.Create(TDuckCall.Create);
end;

function TCountingDuckFactory.CreateMallardDuck: IQuackable;
begin
  Result :=  TQuackCounter.Create(TMallardDuck.Create);
end;

function TCountingDuckFactory.CreateRedHeadDuck: IQuackable;
begin
  Result :=  TQuackCounter.Create(TRedHeadDuck.Create);
end;

function TCountingDuckFactory.CreateRubberDuck: IQuackable;
begin
  Result :=  TQuackCounter.Create(TRubberDuck.Create);
end;

end.

