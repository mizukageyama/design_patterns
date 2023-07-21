program ProxyPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  GumballMachine in 'Gumball Machine\GumballMachine.pas',
  HasQuarterState in 'Gumball Machine\HasQuarterState.pas',
  NoQuarterState in 'Gumball Machine\NoQuarterState.pas',
  SoldOutState in 'Gumball Machine\SoldOutState.pas',
  SoldState in 'Gumball Machine\SoldState.pas',
  StateIntf in 'Gumball Machine\StateIntf.pas',
  WinnerState in 'Gumball Machine\WinnerState.pas',
  GumballMonitor in 'Gumball Machine\GumballMonitor.pas';

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