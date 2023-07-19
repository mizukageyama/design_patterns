unit Soy;

interface

uses
  Beverage, CondimentDecorator;

type
  TSoy = class(TCondimentDecorator)
  private
    FBeverage: TBeverage;
  public
    function GetDescription: string; override;
    function Cost: Double;  override;
    constructor Create(ABeverage: TBeverage);
  end;

implementation

{ TSoy }

function TSoy.Cost: Double;
begin
  Result := 0.15 + FBeverage.Cost;
end;

constructor TSoy.Create(ABeverage: TBeverage);
begin
  FBeverage := ABeverage;
end;

function TSoy.GetDescription: string;
begin
  Result := FBeverage.GetDescription + ', Soy';
end;
end.
