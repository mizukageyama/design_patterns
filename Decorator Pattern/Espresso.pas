unit Espresso;

interface

uses
  Beverage;

type
  TEspresso = class(TBeverage)
  public
    function Cost: Double; override;
    constructor Create;
  end;
implementation

{ TEspresso }

function TEspresso.Cost: Double;
begin
  Result := 1.99;
end;

constructor TEspresso.Create;
begin
  FDescription := 'Expresso';
end;

end.
