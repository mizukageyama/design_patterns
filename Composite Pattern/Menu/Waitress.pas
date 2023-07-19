unit Waitress;

interface

uses
  IteratorIntf, MenuItem, System.SysUtils, System.Generics.Collections,
  MenuComponent;

type
  TWaitress = class
  private
    FAllMenus: TMenuComponent;
  public
    constructor Create(AAllMenus: TMenuComponent);
    procedure PrintMenu; overload;
    procedure PrintVegetarianMenu;
  end;

implementation

{ TWaitress }

constructor TWaitress.Create(AAllMenus: TMenuComponent);
begin
  FAllMenus := AAllMenus;
end;

procedure TWaitress.PrintMenu;
begin
  FAllMenus.Print;
end;

procedure TWaitress.PrintVegetarianMenu;
begin
  var Iterator := FAllMenus.CreateIterator;
  WriteLn(sLineBreak + 'VEGETARIAN MENU' + sLineBreak);
  while Iterator.HasNext do
  begin
    var MenuComponent := Iterator.Next as TMenuComponent;
    try
      if MenuComponent.IsVegetarian then
        MenuComponent.Print;
    except
      raise ENotSupportedException.Create('This operation is not supported.');
    end;
  end;
end;

end.
