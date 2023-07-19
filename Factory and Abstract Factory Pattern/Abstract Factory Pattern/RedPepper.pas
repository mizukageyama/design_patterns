unit RedPepper;

interface

uses
  VeggiesIntf;

type
  TRedPepper = class(TInterfacedObject, IVeggies)
    function ToString: string; override;
  end;

implementation

{ TRedPepper }

function TRedPepper.ToString: string;
begin
  Result :=  'Red Pepper';
end;

end.
