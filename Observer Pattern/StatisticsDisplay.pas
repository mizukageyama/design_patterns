unit StatisticsDisplay;

interface

uses
  DisplayElementIntf, ObserverIntf, SubjectIntf, System.SysUtils;

type
  TStatisticsDisplay = class(TInterfacedObject, IObserver,
    IDisplayElement)
  private
    FMaxTemp: Double;
    FMinTemp: Double;
    FTempSum: Double;
    FNumReadings: Integer;
    FWeatherData: ISubject;
  public
    procedure Update(Temperature, Humidity, Pressure: Double);
    procedure Display;
    constructor Create(AWeatherData: ISubject);
  end;

implementation

{ TStatisticsDisplay }

constructor TStatisticsDisplay.Create(AWeatherData: ISubject);
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
