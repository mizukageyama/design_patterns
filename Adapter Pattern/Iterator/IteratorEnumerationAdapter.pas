unit IteratorEnumerationAdapter;

interface

uses IteratorIntf, EnumerationIntf, System.SysUtils;

type
  TIteratorEnumerationAdapter = class(TInterfacedObject, IEnumeration)
  private
    FIterator: IIterator;
  public
    function HasMoreElements: Boolean;
    function NextElement: TObject;
    procedure Create(AIterator: IIterator);
  end;

implementation

{ TIteratorEnumerationAdapter }

procedure TIteratorEnumerationAdapter.Create(AIterator: IIterator);
begin
  FIterator := AIterator;
end;

function TIteratorEnumerationAdapter.HasMoreElements: Boolean;
begin
  Result := FIterator.HasNext;
end;

function TIteratorEnumerationAdapter.NextElement: TObject;
begin
  Result := FIterator.Next;
end;

end.
