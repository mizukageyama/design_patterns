unit WeatherDataU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, ObserverIntf,
  SubjectIntf, DisplayElementIntf;

type
  TWeatherData = class(TInterfacedObject, ISubject)
  private
    FObservers: TList<IObserver>;
    FTemperature: Double;
    FHumidity: Double;
    FPressure: Double;
  public
    procedure RegisterObserver(O: IObserver);
    procedure RemoveObserver(O: IObserver);
    procedure NotifyObservers;
    procedure SetMeasurements(Temperature, Humidity, Pressure: Double);
    procedure MeasurementsChanged;
    constructor Create;
  end;

implementation

{ TWeatherData }

constructor TWeatherData.Create;
begin
  FObservers := TList<IObserver>.Create;
end;

procedure TWeatherData.MeasurementsChanged;
begin
  NotifyObservers;
end;

procedure TWeatherData.NotifyObservers;
var
  Observer: IObserver;
begin
  for Observer in FObservers do
    Observer.Update(FTemperature, FHumidity, FPressure);
end;

procedure TWeatherData.RegisterObserver(O: IObserver);
begin
  FObservers.Add(O);
end;

procedure TWeatherData.RemoveObserver(O: IObserver);
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

end.
