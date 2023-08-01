unit GumballMonitor;

interface

uses
  GumballMachine, System.SysUtils;

type
  TGumballMonitor = class
  private
    FMachine: TGumballMachine;
  public
    constructor Create(AMachine: TGumballMachine);
    procedure Report;
  end;

implementation

{ TGumballMonitor }

constructor TGumballMonitor.Create(AMachine: TGumballMachine);
begin
  FMachine := AMachine;
end;

procedure TGumballMonitor.Report;
begin
  WriteLn('Gumball Machine: ' + FMachine.GetLocation);
  WriteLn('Current inventory: ' + FMachine.GetCount.ToString);
  WriteLn('Current state: ' + FMachine.GetState.ToString);
end;

end.
