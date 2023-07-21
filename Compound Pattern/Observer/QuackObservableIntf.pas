unit QuackObservableIntf;

interface

uses
  ObserverIntf;

type
  IQuackObservable = interface
    procedure RegisterObserver(Observer IObserver);
    procedure NotifyObservers;
  end;

implementation

end.
