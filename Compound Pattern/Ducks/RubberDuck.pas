unit RubberDuck;

interface

uses
  QuackableIntf, Observable, ObserverIntf, System.SysUtils;

type
  TRubberDuck = class(TInterfacedObject, IQuackable)
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

{ TRubberDuck }

constructor TRubberDuck.Create;
var
  SelfAsIntf: IQuackObservable;
begin
  if Supports(Self, IQuackable, SelfAsIntf) then
  begin
    FObservable := TObservable.Create(SelfAsIntf);
  end;
end;

procedure TRubberDuck.NotifyObservers;
begin
  FObservable.NotifyObservers;
end;

procedure TRubberDuck.Quack;
begin
  WriteLn('Squeak');
  NotifyObservers;
end;

procedure TRubberDuck.RegisterObserver(Observer: IObserver);
begin
  FObservable.RegisterObserver(Observer);
end;

function TRubberDuck.ToString: string;
begin
  Result := 'Rubber Duck';
end;

end.

