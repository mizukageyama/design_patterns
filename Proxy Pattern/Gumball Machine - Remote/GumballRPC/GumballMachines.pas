unit GumballMachines;

interface

uses
  GumballMachine, System.Generics.Collections, System.SysUtils;

type
  TGumballMachines = class
  private
    FGumballMachines: TDictionary<string, TGumballMachineRemote>;
  public
    constructor Create;
    function GetMachine(Location: string): TGumballMachineRemote;
  end;

implementation

{ TGumballMachines }

constructor TGumballMachines.Create;
begin
  FGumballMachines := TDictionary<string, TGumballMachineRemote>.Create;
  FGumballMachines.Add('Davao', TGumballMachineRemote.Create(10, 'Davao'));
  FGumballMachines.Add('CDO', TGumballMachineRemote.Create(40, 'CDO'));
  FGumballMachines.Add('Gensan', TGumballMachineRemote.Create(25, 'Gensan'));
end;

function TGumballMachines.GetMachine(Location: string): TGumballMachineRemote;
var
  Machine: TGumballMachineRemote;
begin
  if FGumballMachines.TryGetValue(Location, Machine) then
  begin
    Result := Machine;
  end
  else
  begin
    raise Exception.Create('No remote machine in ' + Location);
  end;
end;

end.
