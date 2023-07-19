unit ForecastDisplay;

interface

uses
  DisplayElementIntf, ObserverIntf, SubjectIntf;

type
  TForecastDisplay = class(TInterfacedObject, IObserver,
    IDisplayElement)
  private
    FCurrentPressure: Double;
    FLastPressure: Double;
    FWeatherData: ISubject;
  public
    procedure Update(Temperature, Humidity, Pressure: Double);
    procedure Display;
    constructor Create(AWeatherData: ISubject);
  end;

implementation

{ TForecastDisplay }

constructor TForecastDisplay.Create(AWeatherData: ISubject);
begin
  FWeatherData := AWeatherData;
  FWeatherData.RegisterObserver(Self);
  FCurrentPressure := 29.9;
end;

procedure TForecastDisplay.Display;
begin
  Write('Forecast: ');
  if (FCurrentPressure > FLastPressure) then
    WriteLn('Improving weather on the way!')
  else if (FCurrentPressure = FLastPressure) then
    WriteLn('More of the same')
  else if (FCurrentPressure < FLastPressure) then
    WriteLn('Watch out for cooler, rainy weather');
end;

procedure TForecastDisplay.Update(Temperature, Humidity, Pressure: Double);
begin
  FLastPressure := FCurrentPressure;
	FCurrentPressure := Pressure;
  Display;
end;

end.
