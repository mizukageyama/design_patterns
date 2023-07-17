unit DuckAdapter;

interface

uses DuckIntf, TurKeyIntf;

type
  TDuckAdapter = class(TInterfacedObject, ITurkey)
  private
    FDuck: IDuck;
  public
    procedure Gobble;
    procedure Fly;
    constructor Create(ADuck: IDuck);
  end;

implementation

{ TDuckAdapter }

constructor TDuckAdapter.Create(ADuck: IDuck);
begin
  FDuck := ADuck;
end;

procedure TDuckAdapter.Fly;
begin
  FDuck.Fly;
end;

procedure TDuckAdapter.Gobble;
begin
  FDuck.Quack;
end;

end.

