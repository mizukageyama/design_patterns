unit CafeMenu;

interface

uses
  System.Generics.Collections, System.SysUtils, MenuIntf, IteratorIntf,
  MenuItem, CafeMenuIterator;

type
  TCafeMenu = class(TInterfacedObject, IMenu)
  private
    FMenuItems: TDictionary<string, TMenuItem>;
    FName: string;
  public
    constructor Create(AName: string);
    procedure AddItem(Name, Description: string; Vegetarian: Boolean;
      Price: Double);
    function CreateIterator: IIterator;
    function GetMenuName: string;
  end;

implementation

{ TCafeMenu }

procedure TCafeMenu.AddItem(Name, Description: string; Vegetarian: Boolean;
  Price: Double);
begin
  var MenuItem := TMenuItem.Create(Name, Description, Vegetarian, Price);
  FMenuItems.Add(MenuItem.GetName, MenuItem);
end;

constructor TCafeMenu.Create(AName: string);
begin
  FName := AName;
  FMenuItems:= TDictionary<string, TMenuItem>.Create;

  AddItem('Soup of the day',
    'A cup of the soup of the day, with a side salad', False, 3.69);
  AddItem('Burrito',
    'A large burrito, with whole pinto beans, salsa, guacamole', True, 4.29);
  AddItem('Veggie Burger and Air Fries',
    'Veggie burger on a whole wheat bun, lettuce, tomato, and fries',
    True, 3.99);
end;

function TCafeMenu.CreateIterator: IIterator;
begin
  Result := TCafeMenuIterator.Create(FMenuItems);
end;

function TCafeMenu.GetMenuName: string;
begin
  Result := FName;
end;

end.
