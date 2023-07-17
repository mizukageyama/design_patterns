unit CeilingFan;

interface

type
  TCeilingFan = class
  private
    FLocation: String;
    FLevel: Integer;
  public
    const
     FHIGH = 3;
     FMEDIUM  = 2;
     FLOW = 1;
     FOFF = 0;
    constructor Create(ALocation: String);
    procedure High;
    procedure Medium;
    procedure Low;
    procedure Off;
    function GetSpeed: Integer;
  end;

implementation

{ TCeilingFan }

constructor TCeilingFan.Create(ALocation: String);
begin
  FLocation := ALocation;
end;

function TCeilingFan.GetSpeed: Integer;
begin
  Result := FLevel;
end;

procedure TCeilingFan.High;
begin
  FLevel := FHIGH;
  WriteLn(FLocation + ' ceiling fan is on high');
end;

procedure TCeilingFan.Low;
begin
  FLevel := FLOW;
  WriteLn(FLocation + ' ceiling fan is on low');
end;

procedure TCeilingFan.Medium;
begin
  FLevel := FMEDIUM;
  WriteLn(FLocation + ' ceiling fan is on medium');
end;

procedure TCeilingFan.Off;
begin
  FLevel := FOFF;
  WriteLn(FLocation + ' ceiling fan is off');
end;

end.
