program ProxyPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  GumballMonitor in 'GumballMonitor.pas',
  GumballMachineProxy in 'GumballMachineProxy.pas',
  GumballMachineIntf in 'GumballMachineIntf.pas',
  System.Generics.Collections,
  StateIntf in 'StateIntf.pas';

begin
  try
    var Location := TArray<string>.Create('davao', 'gensan', 'cdo');
    var GumballMachines := TList<TGumballMachineProxy>.Create;

    for var I := 0 to Length(Location) - 1 do
    begin
      GumballMachines.Add(TGumballMachineProxy.Create(0, Location[I]));
    end;

    var GumballMonitor := TGumballMonitor.Create(GumballMachines);
    GumballMonitor.Report;

    WriteLn(sLineBreak + 'Inserting Quarter on Davao ...');
    GumballMachines[0].InsertQuarter;

    WriteLn('Refilling 100 gumball on Gensan ...');
    GumballMachines[1].Refill(100);

    WriteLn('Inserting Quarter then turning Crank on CDO ...');
    GumballMachines[2].InsertQuarter;
    GumballMachines[2].TurnCrank;

    GumballMonitor.Report;
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
