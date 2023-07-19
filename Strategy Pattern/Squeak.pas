unit Squeak;

interface

uses
  QuackBehaviorIntf;

type
  TSqueak = class(TInterfacedObject, IQuackBehavior)
    procedure Quack;
  end;

implementation

{ TSqueak }

procedure TSqueak.Quack;
begin
  WriteLn('Squeak');
end;

end.
