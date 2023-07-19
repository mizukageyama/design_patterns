unit ThinCrustDough;

interface

uses
  DoughIntf;

type
  TThinCrustDough = class(TInterfacedObject, IDough)
    function ToString: string; override;
  end;

implementation

{ TThinCrustDough }

function TThinCrustDough.ToString: string;
begin
  Result :=  'Thin Crust Dough';
end;

end.
