program ObserverPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  WeatherDataU in 'WeatherDataU.pas';

begin
  try
    var WeatherData := TWeatherData.Create;
    var CurrentDisplay := TCurrentConditionsDisplay.Create(WeatherData);
    var StatisticsDisplay := TStatisticsDisplay.Create(WeatherData);
    var ForecastDisplay := TForecastDisplay.Create(WeatherData);
    var HeatIndexDisplay := THeatIndexDisplay.Create(WeatherData);

    WeatherData.SetMeasurements(80, 65, 30.4);
    WeatherData.SetMeasurements(82, 70, 29.2);
    WeatherData.SetMeasurements(78, 90, 29.2);
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
