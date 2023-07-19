unit QuackU;

interface

uses
  QuackBehaviorIntf;

type
  TQuack = class(TInterfacedObject, IQuackBehavior)
    procedure Quack;
  end;

implementation

{ TQuack }

procedure TQuack.Quack;
begin
  WriteLn('Quack');
end;

end.
