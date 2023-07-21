unit QuackCounter;

interface

uses QuackableIntf;

type
  TQuackCounter = class(TInterfacedObject, IQuackable)
  private
    FDuck: IQuackable;
    class var FNumberOfQuacks: Integer;
  public
    constructor Create(ADuck: IQuackable);
    procedure Quack;
    class function GetQuacks: Integer;
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

procedure TQuackCounter.Quack;
begin
  FDuck.Quack;
  FNumberOfQuacks := FNumberOfQuacks + 1;
end;

end.
