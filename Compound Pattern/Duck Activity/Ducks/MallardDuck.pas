unit MallardDuck;

interface

uses
  QuackableIntf, Observable, ObserverIntf, System.SysUtils;

type
  TMallardDuck = class(TInterfacedObject, IQuackable)
  private
    FObservable: TObservable;
  public
    constructor Create;
    procedure Quack;
    procedure RegisterObserver(Observer: IObserver);
    procedure NotifyObservers;
    function ToString: string; override;
  end;

implementation

{ TMallardDuck }

constructor TMallardDuck.Create;
var
  SelfAsIntf: IQuackObservable;
begin
  if Supports(Self, IQuackable, SelfAsIntf) then
  begin
    FObservable := TObservable.Create(SelfAsIntf);
  end;
end;

procedure TMallardDuck.NotifyObservers;
begin
  FObservable.NotifyObservers;
end;

procedure TMallardDuck.Quack;
begin
  WriteLn('Quack');
  NotifyObservers;
end;

procedure TMallardDuck.RegisterObserver(Observer: IObserver);
begin
  FObservable.RegisterObserver(Observer);
end;

function TMallardDuck.ToString: string;
begin
  Result := 'Mallard Duck';
end;

end.
