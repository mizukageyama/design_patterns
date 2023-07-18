unit ReggianoCheese;

interface

uses
  CheeseIntf;

type
  TReggianoCheese = class(TInterfacedObject, ICheese)
    function ToString: String; override;
  end;

implementation

{ TReggianoCheese }

function TReggianoCheese.ToString: String;
begin
  Result :=  'Reggiano Cheese';
end;

end.