unit WildTurkey;

interface

uses TurKeyIntf;

type
  TWildTurkey = class(TInterfacedObject, ITurkey)
  public
    procedure Gobble;
    procedure Fly;
  end;

implementation

{ TWildTurkey }

procedure TWildTurkey.Fly;
begin
  WriteLn('I''m flying a short distance');
end;

procedure TWildTurkey.Gobble;
begin
  WriteLn('Gobble gobble');
end;

end.
