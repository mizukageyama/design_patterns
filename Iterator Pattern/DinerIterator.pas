unit DinerIterator;

interface

uses
  IteratorIntf, System.SysUtils, MenuItem;

type
  TDinerMenuIterator = class(TInterfacedObject, IIterator)
  private
    FItems: TArray<TMenuItem>;
    FPosition: Integer;
  public
    constructor Create(AItems: TArray<TMenuItem>);
    function HasNext: Boolean;
    function Next: TObject;
  end;

implementation

{ TDinerMenuIterator }

constructor TDinerMenuIterator.Create(AItems: TArray<TMenuItem>);
begin
  FPosition := 0;
  FItems := AItems;
end;

function TDinerMenuIterator.HasNext: Boolean;
begin
  if (FPosition >= Length(FItems)) or (FItems[FPosition] = nil) then
    Result := False
  else
    Result := True;
end;

function TDinerMenuIterator.Next: TObject;
begin
  var MenuItem: TMenuItem := FItems[FPosition];
  FPosition := FPosition + 1;
  Result := MenuItem;
end;

end.
