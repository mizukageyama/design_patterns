unit MenuIterator;

interface

uses
  IteratorIntf, System.Generics.Collections, MenuItem, System.SysUtils,
  MenuIntf;

type
  TMenuIterator = class(TInterfacedObject, IIterator)
  private
    FMenus: TList<IMenu>;
    FPosition: Integer;
  public
    constructor Create(AMenus: TList<IMenu>);
    function HasNext: Boolean;
    function Next: TObject;
  end;

implementation

{ TMenuIterator }

constructor TMenuIterator.Create(AMenus: TList<IMenu>);
begin
  FPosition := 0;
  FMenus := AMenus;
end;

function TMenuIterator.HasNext: Boolean;
begin
  if FPosition >= FMenus.Count then
    Result := False
  else
    Result := True;
end;

function TMenuIterator.Next: TObject;
begin
  var Item: TObject := FMenus.Items[FPosition] as TObject;
  FPosition := FPosition + 1;
  Result := Item;
end;

end.
