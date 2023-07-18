unit TheaterLights;

interface

uses
  System.SysUtils;

type
  TTheaterLights = class
  private
    FDescription: String;
  public
    constructor Create(ADescription: String);
    procedure OnTheaterLights;
    procedure OffTheaterLights;
    procedure Dim(Level :Integer);
    function ToString: String; override;
  end;

implementation

{ TTheaterLights }

constructor TTheaterLights.Create(ADescription: String);
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

function TTheaterLights.ToString: String;
begin
  Result := FDescription;
end;

end.
