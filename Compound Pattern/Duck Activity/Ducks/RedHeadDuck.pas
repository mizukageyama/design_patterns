unit RedHeadDuck;

interface

uses
  QuackableIntf, Observable, ObserverIntf, System.SysUtils;

type
  TRedHeadDuck = class(TInterfacedObject, IQuackable)
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

{ TRedHeadDuck }

constructor TRedHeadDuck.Create;
var
  SelfAsIntf: IQuackObservable;
begin
  if Supports(Self, IQuackable, SelfAsIntf) then
  begin
    FObservable := TObservable.Create(SelfAsIntf);
  end;
end;

procedure TRedHeadDuck.NotifyObservers;
begin
  FObservable.NotifyObservers;
end;

procedure TRedHeadDuck.Quack;
begin
  WriteLn('Quack');
  NotifyObservers;
end;

procedure TRedHeadDuck.RegisterObserver(Observer: IObserver);
begin
  FObservable.RegisterObserver(Observer);
end;

function TRedHeadDuck.ToString: string;
begin
  Result := 'Red Head Duck';
end;

end.
