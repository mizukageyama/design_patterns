unit Light;

interface

type
  TLight = class
  private
    FLocation: string;
  public
    procedure OnLight;
    procedure OffLight;
    constructor Create(ALocation: string);
  end;
implementation

{ TLight }

constructor TLight.Create(ALocation: string);
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
