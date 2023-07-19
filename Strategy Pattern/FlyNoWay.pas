unit FlyNoWay;

interface

uses
  FlyBehaviorIntf;

type
  TFlyNoWay = class(TInterfacedObject, IFlyBehavior)
    procedure Fly;
  end;

implementation

{ TFlyNoWay }

procedure TFlyNoWay.Fly;
begin
  WriteLn('I can’t fly');
end;

end.
