unit Beverage;

interface

type
  TBeverage = class abstract
  public
    FDescription: string;
    function GetDescription: string; virtual;
    function Cost: Double; virtual; abstract;
    constructor Create;
  end;

implementation

{ TBeverage }

constructor TBeverage.Create;
begin
 FDescription := 'Unknown Beverage';
end;

function TBeverage.GetDescription: string;
begin
  Result := FDescription;
end;

end.
