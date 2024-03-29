unit HeatIndexDisplay;

interface

uses
  DisplayElementIntf, ObserverIntf, SubjectIntf, System.SysUtils;

type
  THeatIndexDisplay = class(TInterfacedObject, IObserver,
    IDisplayElement)
  private
    FHeatIndex: Double;
    FWeatherData: ISubject;
  public
    procedure Update(Temperature, RH, Pressure: Double);
    procedure Display;
    function ComputeHeatIndex(T, RH: Double): Double;
    constructor Create(AWeatherData: ISubject);
  end;

implementation

{ THeatIndexDisplay }

function THeatIndexDisplay.ComputeHeatIndex(T, RH: Double): Double;
begin
  var Index: Double := ((16.923 + (0.185212 * T) + (5.37941 * RH) -
    (0.100254 * T * RH) + (0.00941695 * (T * T)) + (0.00728898 * (RH * RH)) +
    (0.000345372 * (T * T * RH)) - (0.000814971 * (t * RH * RH)) +
		(0.0000102102 * (T * T * RH * RH)) - (0.000038646 * (T * T * T)) +
    (0.0000291583 * (RH * RH * RH)) + (0.00000142721 * (T * T * T * RH)) +
		(0.000000197483 * (T * RH * RH * RH)) - (0.0000000218429 *
    (T * T * T * rh * RH)) + 0.000000000843296 * (T * T * RH * RH * RH)) -
		(0.0000000000481975 * (T * T * T * RH * RH * RH)));
  Result := Index;
end;

constructor THeatIndexDisplay.Create(AWeatherData: ISubject);
begin
  FWeatherData := AWeatherData;
  FWeatherData.RegisterObserver(Self);
  FHeatIndex := 0.0;
end;

procedure THeatIndexDisplay.Display;
begin
  WriteLn('Heat index is ' + FloatToStrF(FHeatIndex, ffFixed, 15, 5));
end;

procedure THeatIndexDisplay.Update(Temperature, RH, Pressure: Double);
begin
  FHeatIndex := ComputeHeatIndex(Temperature, RH);
  Display;
end;

end.
