program CompoundPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  QuackableIntf in 'Ducks\QuackableIntf.pas',
  MallardDuck in 'Ducks\MallardDuck.pas',
  RedHeadDuck in 'Ducks\RedHeadDuck.pas',
  DuckCall in 'Ducks\DuckCall.pas',
  RubberDuck in 'Ducks\RubberDuck.pas',
  DuckSimulator in 'Ducks\DuckSimulator.pas',
  Goose in 'Adapter\Goose.pas',
  GooseAdapter in 'Adapter\GooseAdapter.pas';

begin
  try
    var Simulator := TDuckSimulator.Create;
    Simulator.Simulate;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
