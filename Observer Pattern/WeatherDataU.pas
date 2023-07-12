unit WeatherDataU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections;

type
  TObserver = interface
    procedure Update(Temp, Humidity, Pressure: Double);
  end;

  TSubject = interface
    procedure RegisterObserver(O: TObserver);
    procedure RemoveObserver(O: TObserver);
    procedure NotifyObservers;
  end;

  TDisplayElement = interface
    procedure Display;
  end;

  TWeatherData = class(TInterfacedObject, TSubject)
  private
    FObservers: TList<TObserver>;
    FTemperature: Double;
    FHumidity: Double;
    FPressure: Double;
  public
    procedure RegisterObserver(O: TObserver);
    procedure RemoveObserver(O: TObserver);
    procedure NotifyObservers;
    procedure SetMeasurements(Temperature, Humidity, Pressure: Double);
    procedure MeasurementsChanged;
    constructor Create;
  end;

  TCurrentConditionsDisplay = class(TInterfacedObject, TObserver,
    TDisplayElement)
  private
    FTemperature: Double;
    FHumidity: Double;
    FWeatherData: TSubject;
  public
    procedure Update(Temperature, Humidity, Pressure: Double);
    procedure Display;
    constructor Create(AWeatherData: TSubject);
  end;

  TForecastDisplay = class(TInterfacedObject, TObserver,
    TDisplayElement)
  private
    FCurrentPressure: Double;
    FLastPressure: Double;
    FWeatherData: TSubject;
  public
    procedure Update(Temperature, Humidity, Pressure: Double);
    procedure Display;
    constructor Create(AWeatherData: TSubject);
  end;

  TStatisticsDisplay = class(TInterfacedObject, TObserver,
    TDisplayElement)
  private
    FMaxTemp: Double;
    FMinTemp: Double;
    FTempSum: Double;
    FNumReadings: Integer;
    FWeatherData: TSubject;
  public
    procedure Update(Temperature, Humidity, Pressure: Double);
    procedure Display;
    constructor Create(AWeatherData: TSubject);
  end;


implementation

{ TWeatherData }

constructor TWeatherData.Create;
begin
  FObservers := TList<TObserver>.Create;
end;

procedure TWeatherData.MeasurementsChanged;
begin
  NotifyObservers;
end;

procedure TWeatherData.NotifyObservers;
var
  Observer: TObserver;
begin
  for Observer in FObservers do
    Observer.Update(FTemperature, FHumidity, FPressure);
end;

procedure TWeatherData.RegisterObserver(O: TObserver);
begin
  FObservers.Add(O);
end;

procedure TWeatherData.RemoveObserver(O: TObserver);
begin
  FObservers.Remove(O);
end;

procedure TWeatherData.SetMeasurements(Temperature, Humidity, Pressure: Double);
begin
  FTemperature := Temperature;
  FHumidity := Humidity;
  FPressure := Pressure;
  MeasurementsChanged;
end;

{ TCurrentConditionsDisplay }

constructor TCurrentConditionsDisplay.Create(AWeatherData: TSubject);
begin
  FWeatherData := AWeatherData;
  FWeatherData.RegisterObserver(Self);
end;

procedure TCurrentConditionsDisplay.Display;
begin
  var ConditionStr := Format('Current conditions: %fF degrees and %f humidity',
    [FTemperature, FHumidity]);
  WriteLn(ConditionStr);
end;

procedure TCurrentConditionsDisplay.Update(Temperature, Humidity,
  Pressure: Double);
begin
  FTemperature := Temperature;
  FHumidity := Humidity;
  Display;
end;

{ TForecastDisplay }

constructor TForecastDisplay.Create(AWeatherData: TSubject);
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
  Display();
end;

{ TStatisticsDisplay }

constructor TStatisticsDisplay.Create(AWeatherData: TSubject);
begin
  FWeatherData := AWeatherData;
  FWeatherData.RegisterObserver(Self);
  FMaxTemp := 0.0;
  FMinTemp := 200;
  FTempSum := 0.0;
end;

procedure TStatisticsDisplay.Display;
begin
  WriteLn('Avg/Max/Min temperature = ' + (FTempSum / FNumReadings).ToString +
    '/' + FMaxTemp.ToString + '/' + FMinTemp.ToString);
end;

procedure TStatisticsDisplay.Update(Temperature, Humidity, Pressure: Double);
begin
  FTempSum := FTempSum + Temperature;
  FNumReadings := FNumReadings + 1;
  if (Temperature > FMaxTemp) then
    FMaxTemp := Temperature;
  if (Temperature < FMinTemp) then
    FMinTemp := Temperature;
  Display;
end;

end.
