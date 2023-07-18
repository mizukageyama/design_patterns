unit DinerMenu;

interface

uses
  MenuItem, System.Generics.Collections;

type
  TDinerMenu = class
  private
    var FMaxItems: Integer;
    FNumberOfItems: Integer;
    FMenuItems: TArray<TMenuItem>;
  public
    constructor Create;
    procedure AddItem(Name, Description: String; Vegetarian: Boolean;
      Price: Double);
    function GetMenuItems: TArray<TMenuItem>;
  end;

implementation

{ TDinerMenu }

procedure TDinerMenu.AddItem(Name, Description: String;
  Vegetarian: Boolean; Price: Double);
begin
  var MenuItem := TMenuItem.Create(Name, Description, Vegetarian, Price);
  if FNumberOfItems >= FMaxItems then
    WriteLn('Sorry, menu is full! Can�t add item to menu')
  else
  begin
    FMenuItems[FNumberOfItems] := MenuItem;
    FNumberOfItems := FNumberOfItems + 1;
  end;
end;

constructor TDinerMenu.Create;
begin
  FMaxItems := 6;
  FNumberOfItems := 0;
  SetLength(FMenuItems, FMaxItems);
  AddItem('K&B�s Pancake Breakfast','Pancakes with scrambled eggs, and toast', True, 2.99);
  AddItem('Regular Pancake Breakfast','Pancakes with fried eggs, sausage', False, 2.99);
  AddItem('Blueberry Pancakes','Pancakes made with fresh blueberries', True, 2.99);
  AddItem('�Waffles','Waffles, with your choice of blueberries or strawberries', True, 2.99);
end;

function TDinerMenu.GetMenuItems: TArray<TMenuItem>;
begin
  Result := FMenuItems;
end;

end.

