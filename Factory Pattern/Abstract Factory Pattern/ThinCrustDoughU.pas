unit ThinCrustDoughU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, DoughU;

type
  TThinCrustDough = class(TInterfacedObject, IDough)
    function ToString: String;
  end;

implementation

{ TThinCrustDough }

function TThinCrustDough.ToString: String;
begin
  Result :=  'Thin Crust Dough';
end;

end.
