program ProxyPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  GumballMachine in 'GumballMachine.pas',
  HasQuarterState in 'HasQuarterState.pas',
  NoQuarterState in 'NoQuarterState.pas',
  SoldOutState in 'SoldOutState.pas',
  SoldState in 'SoldState.pas',
  StateIntf in 'StateIntf.pas',
  WinnerState in 'WinnerState.pas',
  GumballMonitor in 'GumballMonitor.pas';

begin

  try
    var GumballMachine := TGumballMachine.Create(4, 'Scranton');
    var GumballMonitor := TGumballMonitor.Create(GumballMachine);
    GumballMonitor.Report;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
