unit ObserverIntf;

interface


type
  IQuackObservable = interface;

  IObserver = interface ['{3A130EAC-73D2-4BA2-A5ED-C245096B7EEF}']
    procedure Update(Duck: IQuackObservable);
  end;

  IQuackObservable = interface
    procedure RegisterObserver(Observer: IObserver);
    procedure NotifyObservers;
    function ToString: string;
  end;

implementation

end.
