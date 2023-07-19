program IteratorPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  IteratorIntf in 'IteratorIntf.pas',
  DinerIterator in 'DinerIterator.pas',
  MenuItem in 'MenuItem.pas',
  PancakeHouseMenu in 'PancakeHouseMenu.pas',
  DinerMenu in 'DinerMenu.pas',
  PancakeHouseMenuIterator in 'PancakeHouseMenuIterator.pas',
  Waitress in 'Waitress.pas',
  MenuIntf in 'MenuIntf.pas',
  CafeMenu in 'CafeMenu.pas',
  CafeMenuIterator in 'CafeMenuIterator.pas';

begin
  try
    var PancakeHouseMenu: IMenu := TPancakeHouseMenu.Create;
    var DinerMenu: IMenu := TDinerMenu.Create;
    var CafeMenu: IMenu := TCafeMenu.Create;

    var Waitress := TWaitress.Create(PancakeHouseMenu, DinerMenu, CafeMenu);
    Waitress.PrintMenu;

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
