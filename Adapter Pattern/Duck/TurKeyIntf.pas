unit TurKeyIntf;

interface

type
  ITurkey = interface
    procedure Gobble;
    procedure Fly;
  end;

procedure TestTurkey(Turkey: ITurkey);

implementation

procedure TestTurkey(Turkey: ITurkey);
begin
  Turkey.Gobble;
  Turkey.Fly;
end;

end.
