unit Duck;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections,
  QuackBehaviorIntf, QuackU, FlyBehaviorIntf;


type
  TDuck = class abstract
  public
    FFlyBehavior: IFlyBehavior;
    FQuackBehavior: IQuackBehavior;
    procedure SetFlyBehavior(FB: IFlyBehavior);
    procedure SetQuackBehavior(QB: IQuackBehavior);
    procedure PerformFly;
    procedure PerformQuack;
    procedure Swim;
    procedure Display; virtual; abstract;
  end;

implementation

{ TDuck }

procedure TDuck.PerformFly;
begin
  FFlyBehavior.Fly;
end;

procedure TDuck.PerformQuack;
begin
  FQuackBehavior.Quack;
end;

procedure TDuck.SetFlyBehavior(FB: IFlyBehavior);
begin
  FFlyBehavior := FB;
end;

procedure TDuck.SetQuackBehavior(QB: IQuackBehavior);
begin
  FQuackBehavior := QB;
end;

procedure TDuck.Swim;
begin
  WriteLn('All ducks float, even decoys!');
end;

end.
