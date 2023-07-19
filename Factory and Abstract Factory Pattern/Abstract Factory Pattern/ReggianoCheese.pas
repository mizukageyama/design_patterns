unit ReggianoCheese;

interface

uses
  CheeseIntf;

type
  TReggianoCheese = class(TInterfacedObject, ICheese)
    function ToString: string; override;
  end;

implementation

{ TReggianoCheese }

function TReggianoCheese.ToString: string;
begin
  Result :=  'Reggiano Cheese';
end;

end.
