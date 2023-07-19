unit DarkRoast;

interface

uses
  Beverage;

type
  TDarkRoast = class(TBeverage)
  public
    function Cost: Double; override;
    constructor Create;
  end;

implementation

{ TDarkRoast }

function TDarkRoast.Cost: Double;
begin
  Result := 0.99;
end;

constructor TDarkRoast.Create;
begin
  FDescription := 'Dark Roast Coffee';
end;

end.
