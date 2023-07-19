unit Waitress;

interface

uses
  DinerMenu, PancakeHouseMenu, IteratorIntf, MenuItem, System.SysUtils,
  MenuIntf, System.Generics.Collections, MenuIterator;

type
  TWaitress = class
  private
    FMenus: TList<IMenu>;
  public
    constructor Create(AMenus: TList<IMenu>);
    procedure PrintMenu; overload;
    procedure PrintMenu(Iterator: IIterator); overload;
  end;

implementation

{ TWaitress }

constructor TWaitress.Create(AMenus: TList<IMenu>);
begin
  FMenus := AMenus;
end;

procedure TWaitress.PrintMenu;
var
  MenuObj: TObject;
  MenuIntf: IMenu;
begin
  var MenuIterator := TMenuIterator.Create(FMenus);
  WriteLn('MENU' + sLineBreak + '---');
  while MenuIterator.HasNext do
  begin
    MenuObj := MenuIterator.Next;

    //Cast TObject to IMenu Interface
    if Supports(MenuObj, IMenu, MenuIntf) then
    begin
      Writeln(MenuIntf.GetMenuName);
      PrintMenu(MenuIntf.CreateIterator);
      WriteLn;
    end;
  end;
end;

procedure TWaitress.PrintMenu(Iterator: IIterator);
begin
  while Iterator.HasNext do
  begin
    var MenuItem: TMenuItem := Iterator.Next as TMenuItem;
    Write(MenuItem.GetName + ', ');
    Write(MenuItem.GetPrice.toString + ' -- ');
    WriteLn(MenuItem.GetDescription);
  end;
end;

end.
