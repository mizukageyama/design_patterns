unit ThinCrustDough;

interface

uses
  DoughIntf;

type
  TThinCrustDough = class(TInterfacedObject, IDough)
    function ToString: String; override;
  end;

implementation

{ TThinCrustDough }

function TThinCrustDough.ToString: String;
begin
  Result :=  'Thin Crust Dough';
end;

end.
