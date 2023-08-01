unit GumballMonitor;

interface

uses
  GumballMachineProxy, System.SysUtils, System.Generics.Collections;

type
  TGumballMonitor = class
  private
    FMachines: TList<TGumballMachineProxy>;
  public
    constructor Create(AMachines: TList<TGumballMachineProxy>);
    procedure Report;
  end;

implementation

{ TGumballMonitor }

constructor TGumballMonitor.Create(AMachines: TList<TGumballMachineProxy>);
begin
  FMachines := AMachines;
end;

procedure TGumballMonitor.Report;
begin
  for var Machine: TGumballMachineProxy in FMachines do
  begin
    WriteLn(sLineBreak + 'Gumball Machine: ' + Machine.GetLocation);
    WriteLn('Current inventory: ' + Machine.GetCount.ToString);
    WriteLn('Current state: ' + Machine.GetState);
  end;
end;

end.
