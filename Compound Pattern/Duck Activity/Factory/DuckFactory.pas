unit DuckFactory;

interface

uses
  AbstractDuckFactory, QuackableIntf, DuckCall, MallardDuck, RedHeadDuck,
  RubberDuck;

type
  TDuckFactory = class(TAbstractDuckFactory)
  public
    function CreateMallardDuck: IQuackable; override;
    function CreateRedHeadDuck: IQuackable; override;
    function CreateDuckCall: IQuackable; override;
    function CreateRubberDuck: IQuackable; override;
  end;

implementation

{ TDuckFactory }

function TDuckFactory.CreateDuckCall: IQuackable;
begin
  Result := TDuckCall.Create;
end;

function TDuckFactory.CreateMallardDuck: IQuackable;
begin
  Result := TMallardDuck.Create;
end;

function TDuckFactory.CreateRedHeadDuck: IQuackable;
begin
  Result := TRedHeadDuck.Create;
end;

function TDuckFactory.CreateRubberDuck: IQuackable;
begin
  Result := TRubberDuck.Create;
end;

end.
