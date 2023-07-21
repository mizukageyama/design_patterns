unit QuackableIntf;

interface

uses
  ObserverIntf;

type
  IQuackable = interface(IQuackObservable)
  ['{382EBE5C-48F8-4F7B-AA66-4E40CE19A1CD}']
    procedure Quack;
  end;

implementation

end.
