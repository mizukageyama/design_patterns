unit CompositeIterator;

interface

uses
  System.SysUtils, System.Generics.Collections, MenuComponent, IteratorIntf;

type
  TCompositeIterator = class(TInterfacedObject, IIterator)
  private
    FStack: TStack<IIterator>;
  public
    constructor Create(AIterator: IIterator);
    function HasNext: Boolean;
    function Next: TObject;
    procedure Remove;
  end;

implementation

uses
  Menu;

{ TCompositeIterator }

constructor TCompositeIterator.Create(AIterator: IIterator);
begin
  FStack := TStack<IIterator>.Create;
  FStack.Push(AIterator);
end;

function TCompositeIterator.HasNext: Boolean;
begin
  if FStack.Count = 0 then
    Result := False
  else
  begin
    var Iterator := FStack.Peek;
    if not Iterator.HasNext then
    begin
      FStack.Pop;
      Result := HasNext;
    end
    else
      Result := True;
  end;
end;

function TCompositeIterator.Next: TObject;
begin
  if HasNext then
  begin
    var Iterator := FStack.Peek;
    var Component := Iterator.Next as TMenuComponent;
    if Component is TMenu then
      FStack.Push(Component.CreateIterator);
    Result := Component;
  end
  else
    Result := nil;
end;

procedure TCompositeIterator.Remove;
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

end.
