unit Onion;

interface

uses
  VeggiesIntf;

type
  TOnion = class(TInterfacedObject, IVeggies)
    function ToString: String; override;
  end;

implementation

{ TOnion }

function TOnion.ToString: String;
begin
  Result :=  'Onion';
end;

end.
