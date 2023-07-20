unit Goose;

interface

type
  TGoose = class
  public
    procedure Honk;
  end;

implementation

{ TGoose }

procedure TGoose.Honk;
begin
  WriteLn('Honk');
end;

end.
