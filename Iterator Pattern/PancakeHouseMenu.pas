unit PancakeHouseMenu;

interface

uses
  MenuItem, System.Generics.Collections, IteratorIntf, PancakeHouseMenuIterator,
  MenuIntf, System.SysUtils;

type
  TPancakeHouseMenu = class(TInterfacedObject, IMenu)
  private
    FMenuItems: TList<TMenuItem>;
    FName: string;
  public
    constructor Create(AName: string);
    procedure AddItem(Name, Description: string; Vegetarian: Boolean;
      Price: Double);
    function CreateIterator: IIterator;
    function GetMenuName: string;
  end;

implementation

{ TPancakeHouseMenu }

procedure TPancakeHouseMenu.AddItem(Name, Description: string;
  Vegetarian: Boolean; Price: Double);
begin
  var MenuItem := TMenuItem.Create(Name, Description, Vegetarian, Price);
  FMenuItems.Add(MenuItem);
end;

constructor TPancakeHouseMenu.Create(AName: string);
begin
  FName := AName;
  FMenuItems := TList<TMenuItem>.Create;
  AddItem('K&B’s Pancake Breakfast',
    'Pancakes with scrambled eggs, and toast', True, 2.99);
  AddItem('Regular Pancake Breakfast',
    'Pancakes with fried eggs, sausage', False, 2.99);
  AddItem('Blueberry Pancakes',
    'Pancakes made with fresh blueberries', True, 3.49);
  AddItem('Waffles',
    'Waffles, with your choice of blueberries or strawberries', True, 3.59);
end;

function TPancakeHouseMenu.CreateIterator: IIterator;
begin
  Result := TPancakeHouseMenuIterator.Create(FMenuItems);
end;

function TPancakeHouseMenu.GetMenuName: string;
begin
  Result := FName;
end;

end.
