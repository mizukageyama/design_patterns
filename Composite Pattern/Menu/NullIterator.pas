unit NullIterator;

interface

uses
  IteratorIntf, System.Generics.Collections, MenuItem, System.SysUtils,
  MenuComponent;

type
  TMenuComponentIterator = class(TInterfacedObject, IIterator)
  private
    FItems: TList<TMenuComponent>;
    FPosition: Integer;
  public
    constructor Create(AItems: TList<TMenuComponent>);
    function HasNext: Boolean;
    function Next: TObject;
  end;

implementation

{ TMenuComponentIterator }

constructor TMenuComponentIterator.Create(AItems: TList<TMenuComponent>);
begin
  FPosition := 0;
  FItems := AItems;
end;

function TMenuComponentIterator.HasNext: Boolean;
begin
  if FPosition >= FItems.Count then
    Result := False
  else
    Result := True;
end;

function TMenuComponentIterator.Next: TObject;
begin
  var Item: TObject := FItems.Items[FPosition];
  FPosition := FPosition + 1;
  Result := Item;
end;

end.
