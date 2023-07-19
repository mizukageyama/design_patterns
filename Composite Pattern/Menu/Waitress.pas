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

end.