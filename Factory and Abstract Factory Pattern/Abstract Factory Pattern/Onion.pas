unit Onion;

interface

uses
  VeggiesIntf;

type
  TOnion = class(TInterfacedObject, IVeggies)
    function ToString: string; override;
  end;

implementation

{ TOnion }

function TOnion.ToString: string;
begin
  Result :=  'Onion';
end;

end.
