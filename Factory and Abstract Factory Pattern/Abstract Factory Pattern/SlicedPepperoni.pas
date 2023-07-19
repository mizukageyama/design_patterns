unit SlicedPepperoni;

interface

uses
  PepperoniIntf;

type
  TSlicedPepperoni = class(TInterfacedObject, IPepperoni)
    function ToString: string; override;
  end;

implementation

{ TSlicedPepperoni }

function TSlicedPepperoni.ToString: string;
begin
  Result :=  'Sliced Pepperoni';
end;

end.
