unit FlyRocketPowered;

interface

uses
  FlyBehaviorIntf;

type
  TFlyRocketPowered = class(TInterfacedObject, IFlyBehavior)
    procedure Fly;
  end;

implementation

{ TFlyRocketPowered }

procedure TFlyRocketPowered.Fly;
begin
  WriteLn('I’m flying with a rocket!');
end;

end.
