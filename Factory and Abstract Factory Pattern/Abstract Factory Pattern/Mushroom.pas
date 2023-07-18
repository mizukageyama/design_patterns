unit Mushroom;

interface

uses
  VeggiesIntf;

type
  TMushroom = class(TInterfacedObject, IVeggies)
    function ToString: String; override;
  end;

implementation

{ TMushroom }

function TMushroom.ToString: String;
begin
  Result :=  'Mushroom';
end;

end.
