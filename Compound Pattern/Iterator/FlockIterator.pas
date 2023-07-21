unit FlockIterator;

interface

uses
  IteratorIntf, QuackableIntf, System.Generics.Collections;

type
  TFlockIterator = class(TInterfacedObject, IIterator)
  private
    FQuackers: TList<IQuackable>;
    FPosition: Integer;
  public
    constructor Create(AQuackers: TList<IQuackable>);
    function HasNext: Boolean;
    function Next: TObject;
  end;

implementation

{ TFlockIterator }

constructor TFlockIterator.Create(AQuackers: TList<IQuackable>);
begin
  FQuackers := AQuackers;
  FPosition := 0;
end;

function TFlockIterator.HasNext: Boolean;
begin
  if FPosition >= FQuackers.Count then
    Result := False
  else
    Result := True;
end;

function TFlockIterator.Next: TObject;
begin
  var Item: TObject := FQuackers.Items[FPosition] as TObject;
  FPosition := FPosition + 1;
  Result := Item;
end;

end.
