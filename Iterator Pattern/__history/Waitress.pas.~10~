unit Waitress;

interface

uses
  DinerMenu, PancakeHouseMenu, IteratorIntf, MenuItem, System.SysUtils, MenuIntf;

type
  TWaitress = class
  private
    FPancakeHouseMenu: IMenu;
    FDinerMenu: IMenu;
    FCafeMenu: IMenu;
  public
    constructor Create(APancakeHouseMenu, ADinerMenu: IMenu; ACafeMenu: IMenu);
    procedure PrintMenu; overload;
    procedure PrintMenu(Iterator: IIterator); overload;
  end;

implementation

{ TWaitress }

constructor TWaitress.Create(APancakeHouseMenu, ADinerMenu: IMenu;
  ACafeMenu: IMenu);
begin
  FPancakeHouseMenu := APancakeHouseMenu;
  FDinerMenu := ADinerMenu;
  FCafeMenu := ACafeMenu;
end;

procedure TWaitress.PrintMenu;
begin
  var PancakeIterator := FPancakeHouseMenu.CreateIterator;
  var DinerIterator := FDinerMenu.CreateIterator;
  var CafeIterator := FCafeMenu.CreateIterator;
  WriteLn('MENU' + sLineBreak + '----' + sLineBreak + 'BREAKFAST');
  PrintMenu(PancakeIterator);
  WriteLn(sLineBreak + 'LUNCH');
  PrintMenu(DinerIterator);
  WriteLn(sLineBreak + 'DINNER');
  PrintMenu(CafeIterator);
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
