unit Quackologist;

interface

uses
  ObserverIntf;

type
  TQuackologist = class(TInterfacedObject, IObserver)
  public
    procedure Update(Duck: IQuackObservable);
    function ToString: string; override;
  end;

implementation

{ TQuackologist }

function TQuackologist.ToString: string;
begin
  Result := 'Quackologist';
end;

procedure TQuackologist.Update(Duck: IQuackObservable);
begin
  WriteLn('Quackologist: ' + Duck.ToString + ' just quacked.');
end;

end.