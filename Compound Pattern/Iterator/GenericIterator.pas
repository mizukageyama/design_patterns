unit GenericIterator;

interface

uses
  IteratorIntf, System.Generics.Collections;

type
  TGenericIterator<T> = class(TInterfacedObject, IIterator<T>)
  private
    FQuackers: TList<T>;
    FPosition: Integer;
  public
    constructor Create(AQuackers: TList<T>);
    function HasNext: Boolean;
    function Next: T;
  end;

implementation

{ TGenericIterator }

constructor TGenericIterator<T>.Create(AQuackers: TList<T>);
begin
  FQuackers := AQuackers;
  FPosition := 0;
end;

function TGenericIterator<T>.HasNext: Boolean;
begin
  if FPosition >= FQuackers.Count then
    Result := False
  else
    Result := True;
end;

function TGenericIterator<T>.Next: T;
begin
  var Item: T := FQuackers.Items[FPosition];
  FPosition := FPosition + 1;
  Result := Item;
end;

end.
