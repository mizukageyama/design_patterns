unit DuckCall;

interface

uses
  QuackableIntf, Observable, ObserverIntf, System.SysUtils;

type
  TDuckCall = class(TInterfacedObject, IQuackable)
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

{ TDuckCall }

constructor TDuckCall.Create;
var
  SelfAsIntf: IQuackObservable;
begin
  if Supports(Self, IQuackable, SelfAsIntf) then
  begin
    FObservable := TObservable.Create(SelfAsIntf);
  end;
end;

procedure TDuckCall.NotifyObservers;
begin
  FObservable.NotifyObservers;
end;

procedure TDuckCall.Quack;
begin
  WriteLn('Kwak');
  NotifyObservers;
end;

procedure TDuckCall.RegisterObserver(Observer: IObserver);
begin
  FObservable.RegisterObserver(Observer);
end;

function TDuckCall.ToString: string;
begin
  Result := 'Duck Call';
end;

end.

