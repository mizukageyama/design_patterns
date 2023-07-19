unit TheaterLights;

interface

uses
  System.SysUtils;

type
  TTheaterLights = class
  private
    FDescription: string;
  public
    constructor Create(ADescription: string);
    procedure OnTheaterLights;
    procedure OffTheaterLights;
    procedure Dim(Level :Integer);
    function ToString: string; override;
  end;

implementation

{ TTheaterLights }

constructor TTheaterLights.Create(ADescription: string);
begin
  FDescription := ADescription;
end;

procedure TTheaterLights.Dim(Level: Integer);
begin
  WriteLn(FDescription + ' dimming to ' + Level.ToString);
end;

procedure TTheaterLights.OffTheaterLights;
begin
  WriteLn(FDescription + ' off');
end;

procedure TTheaterLights.OnTheaterLights;
begin
  WriteLn(FDescription + ' on');
end;

function TTheaterLights.ToString: string;
begin
  Result := FDescription;
end;

end.
