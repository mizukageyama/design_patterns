unit GumballMachineLocator;

interface

uses
  GumballMachineIntf, System.Generics.Collections, WebModule;

type
  TGumballMachineLocator = class
  private
    FGumbalMachines: TDictionary<string, IGumballMachine>;
  public
    constructor Create;
    function GetMachineByLocation(Location: string): IGumballMachine;
  end;

implementation
uses
  GumballMachine, MVCFramework.Serializer.JsonDataObjects;

{ TGumballMachineLocator }

constructor TGumballMachineLocator.Create;
begin
  FGumbalMachines := TDictionary<string, IGumballMachine>.Create;
  FGumbalMachines.Add('davao', DavaoGumballMachine);
  FGumbalMachines.Add('cdo', CDOGumballMachine);
  FGumbalMachines.Add('gensan', GensanGumballMachine);
end;

function TGumballMachineLocator.GetMachineByLocation(
  Location: String): IGumballMachine;
begin
    var GM:= FGumbalMachines[Location] as TGumballMachine;
    Result := TGumballMachine.Create(GM.GetCount, GM.GetLocation);
end;

end.
