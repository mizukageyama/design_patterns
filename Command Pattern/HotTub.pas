unit HotTub;

interface

uses
  System.SysUtils;

type
  THotTub = class
  private
    FOn: Boolean;
    FTemperature: Integer;
  public
    procedure OnHotTub;
    procedure OffHotTub;
    procedure Circulate;
    procedure JetsOn;
    procedure JetsOff;
    procedure SetTemperature(Temperature: Integer);
    constructor Create();
  end;
implementation

{ THotTub }

procedure THotTub.Circulate;
begin
  if FOn then
    WriteLn('Hottub is bubbling!');
end;

constructor THotTub.Create;
begin

end;

procedure THotTub.JetsOff;
begin
  if FOn then
    WriteLn('Hottub jets are off');
end;

procedure THotTub.JetsOn;
begin
  if FOn then
    WriteLn('Hottub jets are on');
end;

procedure THotTub.OffHotTub;
begin
  FOn := False;
end;

procedure THotTub.OnHotTub;
begin
  FOn := True;
end;

procedure THotTub.SetTemperature(Temperature: Integer);
begin
		if Temperature > FTemperature then
			WriteLn('Hottub is heating to a steaming ' +
        Temperature.ToString + ' degrees')
		else
			WriteLn('Hottub is cooling to ' +
        Temperature.ToString + ' degrees');
		FTemperature := Temperature;
end;

end.
