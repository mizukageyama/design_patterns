unit Mushroom;

interface

uses
  VeggiesIntf;

type
  TMushroom = class(TInterfacedObject, IVeggies)
    function ToString: string; override;
  end;

implementation

{ TMushroom }

function TMushroom.ToString: string;
begin
  Result :=  'Mushroom';
end;

end.
