unit QuackCounter;

interface

uses
  QuackableIntf, ObserverIntf;

type
  TQuackCounter = class(TInterfacedObject, IQuackable)
  private
    FDuck: IQuackable;
    class var FNumberOfQuacks: Integer;
  public
    constructor Create(ADuck: IQuackable);
    procedure Quack;
    procedure RegisterObserver(Observer: IObserver);
    procedure NotifyObservers;
    class function GetQuacks: Integer;
    function ToString: string; override;
  end;

implementation

{ TQuackCounter }

constructor TQuackCounter.Create(ADuck: IQuackable);
begin
  FDuck := ADuck;
end;

class function TQuackCounter.GetQuacks: Integer;
begin
  Result := FNumberOfQuacks;
end;

procedure TQuackCounter.NotifyObservers;
begin
  FDuck.NotifyObservers;
end;

procedure TQuackCounter.Quack;
begin
  FDuck.Quack;
  FNumberOfQuacks := FNumberOfQuacks + 1;
end;

procedure TQuackCounter.RegisterObserver(Observer: IObserver);
begin
  FDuck.RegisterObserver(Observer);
end;

function TQuackCounter.ToString: string;
begin
  Result := FDuck.ToString;
end;

end.
