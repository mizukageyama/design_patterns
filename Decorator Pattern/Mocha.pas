unit Mocha;

interface

uses
  Beverage, CondimentDecorator;

type
  TMocha = class(TCondimentDecorator)
  private
    FBeverage: TBeverage;
  public
    function GetDescription: string; override;
    function Cost: Double; override;
    constructor Create(ABeverage: TBeverage);
  end;

implementation

{ TMocha }

function TMocha.Cost: Double;
begin
  Result := 0.20 + FBeverage.Cost;
end;

constructor TMocha.Create(ABeverage: TBeverage);
begin
  FBeverage := ABeverage;
end;

function TMocha.GetDescription: string;
begin
  Result := FBeverage.GetDescription + ', Mocha';
end;

end.
