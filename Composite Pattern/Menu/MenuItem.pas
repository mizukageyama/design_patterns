unit MenuItem;

interface

uses
  MenuComponent, System.SysUtils, IteratorIntf;

type
  TMenuItem = class(TMenuComponent)
  private
    FName: string;
    FDescription: string;
    FVegetarian: Boolean;
    FPrice: Double;
  public
    constructor Create(AName, ADescription: string; AVegetarian: Boolean;
      APrice: Double);
    function GetName: string; override;
    function GetDescription: string;
    function GetPrice: Double; override;
    function IsVegetarian: Boolean; override;
    procedure Print; override;
    function CreateIterator: IIterator; override;
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

function TMenuItem.CreateIterator: IIterator;
begin
  Result := nil;
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

procedure TMenuItem.Print;
begin
  Write(' ' + GetName);
  if IsVegetarian then
    Write('(v)');
  WriteLn(', ' + GetPrice.ToString);
  WriteLn('    -- ' + GetDescription);
end;

end.
