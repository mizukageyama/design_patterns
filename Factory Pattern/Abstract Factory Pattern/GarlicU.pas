unit GarlicU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, VeggiesU;

type
  TGarlic = class(TInterfacedObject, IVeggies)
    function ToString: String;
  end;

implementation

{ TGarlic }

function TGarlic.ToString: String;
begin
  Result :=  'Garlic';
end;

end.
