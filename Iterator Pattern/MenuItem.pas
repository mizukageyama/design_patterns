unit MenuItem;

interface

type
  TMenuItem = class
  private
    FName: string;
    FDescription: string;
    FVegetarian: Boolean;
    FPrice: Double;
  public
    constructor Create(AName, ADescription: string; AVegetarian: Boolean;
      APrice: Double);
    function GetName: string;
    function GetDescription: string;
    function GetPrice: Double;
    function IsVegetarian: Boolean;
  end;

implementation

{ TMenuItem }

constructor TMenuItem.Create(AName, ADescription: string; AVegetarian: Boolean;
  APrice: Double);
begin
  FName := AName;
  FDescription := ADescription;
  FVegetarian := AVegetarian;
  FPrice := APrice;
end;

function TMenuItem.GetDescription: string;
begin
  Result := FDescription;
end;

function TMenuItem.GetName: string;
begin
  Result := FName;
end;

function TMenuItem.GetPrice: Double;
begin
  Result := FPrice;
end;

function TMenuItem.IsVegetarian: Boolean;
begin
  Result := FVegetarian;
end;

end.
