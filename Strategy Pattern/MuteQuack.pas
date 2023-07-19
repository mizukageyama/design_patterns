unit MuteQuack;

interface

uses
  QuackBehaviorIntf;

type
  TMuteQuack = class(TInterfacedObject, IQuackBehavior)
    procedure Quack;
  end;

implementation

{ TMuteQuack }

procedure TMuteQuack.Quack;
begin
  WriteLn('<< Silence >>');
end;

end.
