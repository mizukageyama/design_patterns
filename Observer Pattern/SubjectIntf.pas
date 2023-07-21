unit SubjectIntf;

interface

uses ObserverIntf;

type
  ISubject = interface
    procedure RegisterObserver(O: IObserver);
    procedure RemoveObserver(O: IObserver);
    procedure NotifyObservers;
  end;

implementation

end.