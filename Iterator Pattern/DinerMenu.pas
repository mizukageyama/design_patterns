unit DinerMenu;

interface

uses
  MenuItem, System.Generics.Collections, IteratorIntf, DinerIterator,
  MenuIntf, System.SysUtils;

type
  TDinerMenu = class(TInterfacedObject, IMenu)
  private
    var FMaxItems: Integer;
    FNumberOfItems: Integer;
    FMenuItems: TArray<TMenuItem>;
    FName: string;
  public
    constructor Create(AName: string);
    procedure AddItem(Name, Description: string; Vegetarian: Boolean;
      Price: Double);
    function CreateIterator: IIterator;
    function GetMenuName: string;
  end;

implementation

{ TDinerMenu }

procedure TDinerMenu.AddItem(Name, Description: string;
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

constructor TDinerMenu.Create(AName: string);
begin
  FName := AName;
  FMaxItems := 6;
  FNumberOfItems := 0;
  SetLength(FMenuItems, FMaxItems);
  AddItem('Vegetarian BLT',
    '(Fakin'') Bacon with lettuce & tomato on whole wheat', True, 2.99);
  AddItem('BLT',
    'Bacon with lettuce & tomato on whole wheat', False, 2.99);
  AddItem('Soup of the day',
    'Soup of the day, with a side of potato salad', False, 3.29);
  AddItem('Hotdog',
    'A hot dog, with saurkraut, relish, onions, topped with cheese',
    False, 3.05);
  AddItem('Steamed Veggies and Brown Rice',
    'Steamed vegetables over brown rice', True, 3.99);
   AddItem('Pasta',
    'Spaghetti with Marinara Sauce, and a slice of sourdough bread',
    True, 3.89);
end;

function TDinerMenu.CreateIterator: IIterator;
begin
  Result := TDinerMenuIterator.Create(FMenuItems);
end;

function TDinerMenu.GetMenuName: string;
begin
  Result := FName;
end;

end.

