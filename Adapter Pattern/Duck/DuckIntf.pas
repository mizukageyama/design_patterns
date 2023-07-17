unit DuckIntf;

interface

type
  IDuck = interface
    procedure Quack;
    procedure Fly;
  end;

procedure TestDuck(Duck: IDuck);

implementation

procedure TestDuck(Duck: IDuck);
begin
  Duck.Quack;
  Duck.Fly;
end;

end.
