program IteratorPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Generics.Collections,
  IteratorIntf in 'IteratorIntf.pas',
  DinerIterator in 'DinerIterator.pas',
  MenuItem in 'MenuItem.pas',
  PancakeHouseMenu in 'PancakeHouseMenu.pas',
  DinerMenu in 'DinerMenu.pas',
  PancakeHouseMenuIterator in 'PancakeHouseMenuIterator.pas',
  Waitress in 'Waitress.pas',
  MenuIntf in 'MenuIntf.pas',
  CafeMenu in 'CafeMenu.pas',
  CafeMenuIterator in 'CafeMenuIterator.pas',
  MenuIterator in 'MenuIterator.pas';

begin
  try
    var PancakeHouseMenu := TPancakeHouseMenu.Create('BREAKFAST');
    var DinerMenu:= TDinerMenu.Create('LUNCH');
    var CafeMenu := TCafeMenu.Create('DINNER');

    var Menus := TList<IMenu>.Create([PancakeHouseMenu, DinerMenu, CafeMenu]);

    var Waitress := TWaitress.Create(Menus);
    Waitress.PrintMenu;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
