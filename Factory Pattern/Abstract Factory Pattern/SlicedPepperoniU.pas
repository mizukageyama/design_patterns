unit SlicedPepperoniU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, PepperoniU;

type
  TSlicedPepperoni = class(TInterfacedObject, IPepperoni)
    function ToString: String;
  end;

implementation

{ TSlicedPepperoni }

function TSlicedPepperoni.ToString: String;
begin
  Result :=  'Sliced Pepperoni';
end;

end.