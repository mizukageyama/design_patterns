program StrategyPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Duck in 'Duck.pas',
  QuackBehaviorIntf in 'QuackBehaviorIntf.pas',
  QuackU in 'QuackU.pas',
  MuteQuack in 'MuteQuack.pas',
  Squeak in 'Squeak.pas',
  FlyBehaviorIntf in 'FlyBehaviorIntf.pas',
  FlyWithWings in 'FlyWithWings.pas',
  FlyNoWay in 'FlyNoWay.pas',
  FlyRocketPowered in 'FlyRocketPowered.pas',
  MallardDuck in 'MallardDuck.pas',
  ModelDuck in 'ModelDuck.pas';

begin
  try
    var Mallard: TDuck := TMallardDuck.Create;
    Mallard.PerformQuack;
    Mallard.PerformFly;

    var Model: TDuck := TModelDuck.Create;
    Model.PerformFly;
    Model.SetFlyBehavior(TFlyRocketPowered.Create);
    Model.PerformFly;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
