unit CafeMenuIterator;

interface

uses
  IteratorIntf, System.Generics.Collections, MenuItem, System.SysUtils;

type
  TCafeMenuIterator = class(TInterfacedObject, IIterator)
  private
    FItems: TDictionary<string, TMenuItem>;
    FPosition: Integer;
  public
    constructor Create(AItems: TDictionary<string, TMenuItem>);
    function HasNext: Boolean;
    function Next: TObject;
  end;

implementation

{ TCafeMenuIterator }

constructor TCafeMenuIterator.Create(AItems: TDictionary<string, TMenuItem>);
begin
  FPosition := 0;
  FItems := AItems;
end;

function TCafeMenuIterator.HasNext: Boolean;
begin
  if FPosition >= FItems.Count then
    Result := False
  else
    Result := True;
end;

function TCafeMenuIterator.Next: TObject;
begin
  var DictToArray := FItems.ToArray;
  var Item: TObject := DictToArray[FPosition].Value;
  FPosition := FPosition + 1;
  Result := Item;
end;

end.
