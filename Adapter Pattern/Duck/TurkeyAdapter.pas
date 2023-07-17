unit TurkeyAdapter;

interface

uses DuckIntf, TurKeyIntf;

type
  TTurkeyAdapter = class(TInterfacedObject, IDuck)
  private
    FTurkey: ITurkey;
  public
    procedure Quack;
    procedure Fly;
    constructor Create(ATurkey: ITurkey);
  end;

implementation

{ TTurkeyAdapter }

constructor TTurkeyAdapter.Create(ATurkey: ITurkey);
begin
  FTurkey := ATurkey;
end;

procedure TTurkeyAdapter.Fly;
var
  Index: Integer;
begin
  for Index := 1 to 5 do
    FTurkey.Fly;
end;

procedure TTurkeyAdapter.Quack;
begin
  FTurkey.Gobble;
end;

end.
