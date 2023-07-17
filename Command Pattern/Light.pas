unit Light;

interface

type
  TLight = class
  private
    FLocation: String;
  public
    procedure OnLight;
    procedure OffLight;
    constructor Create(ALocation: String);
  end;
implementation

{ TLight }

constructor TLight.Create(ALocation: String);
begin
  FLocation := ALocation;
end;

procedure TLight.OffLight;
begin
  WriteLn(FLocation + ' light is off');
end;

procedure TLight.OnLight;
begin
  WriteLn(FLocation + ' light is on');
end;

end.
