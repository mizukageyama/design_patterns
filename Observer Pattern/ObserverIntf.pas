unit ObserverIntf;

interface

type
  IObserver = interface
    procedure Update(Temp, Humidity, Pressure: Double);
  end;

implementation

end.
