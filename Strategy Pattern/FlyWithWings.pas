unit FlyWithWings;

interface

uses
  FlyBehaviorIntf;

type
  TFlyWithWings = class(TInterfacedObject, IFlyBehavior)
    procedure Fly;
  end;

implementation

{ TFlyWithWings }

procedure TFlyWithWings.Fly;
begin
  WriteLn('I�m flying!!');
end;

end.
