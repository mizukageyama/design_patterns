unit GarageDoor;

interface

type
  TGarageDoor = class
  private
    FLocation: String;
  public
    procedure Up;
    procedure Down;
    procedure Stop;
    procedure LightOn;
    procedure LightOff;
    constructor Create(ALocation: String);
  end;
implementation

{ TGarageDoor }

constructor TGarageDoor.Create(ALocation: String);
begin
  FLocation := ALocation;
end;

procedure TGarageDoor.Up;
begin
  WriteLn('Garage Door is Up');
end;

procedure TGarageDoor.Down;
begin
  WriteLn('Garage Door is Down');
end;

procedure TGarageDoor.LightOff;
begin
  WriteLn('Garage Door Light is Off');
end;

procedure TGarageDoor.LightOn;
begin
  WriteLn('Garage Door Light is On');
end;

procedure TGarageDoor.Stop;
begin
  WriteLn('Garage Door is Stopped');
end;

end.

