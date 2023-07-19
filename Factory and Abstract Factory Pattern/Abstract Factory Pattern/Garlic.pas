unit Garlic;

interface

uses
  VeggiesIntf;

type
  TGarlic = class(TInterfacedObject, IVeggies)
    function ToString: string; override;
  end;

implementation

{ TGarlic }

function TGarlic.ToString: string;
begin
  Result :=  'Garlic';
end;

end.
