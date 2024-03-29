unit Observable;

interface

uses
  ObserverIntf, System.Generics.Collections, GenericIterator;

type
  TObservable = class(TInterfacedObject, IQuackObservable)
  private
    FObservers: TList<IObserver>;
    FDuck: IQuackObservable;
  public
    constructor Create(ADuck: IQuackObservable);
    procedure RegisterObserver(Observer: IObserver);
    procedure NotifyObservers;
  end;

implementation

{ TObservable }

constructor TObservable.Create(ADuck: IQuackObservable);
begin
  FObservers := TList<IObserver>.Create;
  FDuck := ADuck;
end;

procedure TObservable.NotifyObservers;
begin
  var Iterator := TGenericIterator<IObserver>.Create(FObservers);
  while Iterator.HasNext do
  begin
    var Observer := Iterator.Next;
    Observer.Update(FDuck);
  end;
end;

procedure TObservable.RegisterObserver(Observer: IObserver);
begin
  FObservers.Add(Observer);
end;

end.
