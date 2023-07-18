unit PancakeHouseMenu;

interface

uses
  MenuItem, System.Generics.Collections;

type
  TPancakeHouseMenu = class
  private
    FMenuItems: TList<TMenuItem>;
  public
    constructor Create;
    procedure AddItem(Name, Description: String; Vegetarian: Boolean;
      Price: Double);
    function GetMenuItems: TList<TMenuItem>;
  end;

implementation

{ TPancakeHouseMenu }

procedure TPancakeHouseMenu.AddItem(Name, Description: String;
  Vegetarian: Boolean; Price: Double);
begin
  var MenuItem := TMenuItem.Create(Name, Description, Vegetarian, Price);
  FMenuItems.Add(MenuItem);
end;

constructor TPancakeHouseMenu.Create;
begin
  FMenuItems := TList<TMenuItem>.Create;
  AddItem('K&B�s Pancake Breakfast','Pancakes with scrambled eggs, and toast', True, 2.99);
  AddItem('Regular Pancake Breakfast','Pancakes with fried eggs, sausage', False, 2.99);
  AddItem('Blueberry Pancakes','Pancakes made with fresh blueberries', True, 2.99);
  AddItem('�Waffles','Waffles, with your choice of blueberries or strawberries', True, 2.99);
end;

function TPancakeHouseMenu.GetMenuItems: TList<TMenuItem>;
begin
  Result := FMenuItems;
end;

end.
