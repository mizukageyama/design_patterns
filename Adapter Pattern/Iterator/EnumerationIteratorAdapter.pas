unit EnumerationIteratorAdapter;

interface

uses IteratorIntf, EnumerationIntf, System.SysUtils;

type
  TEnumerationIteratorAdapter = class(TInterfacedObject, IIterator)
  private
    FEnumeration: IEnumeration;
  public
    function HasNext: Boolean;
    function Next: TObject;
    procedure Remove;
    procedure Create(AEnumeration: IEnumeration);
  end;

implementation

{ TEnumerationIteratorAdapter }

procedure TEnumerationIteratorAdapter.Create(AEnumeration: IEnumeration);
begin
  FEnumeration := AEnumeration;
end;

function TEnumerationIteratorAdapter.HasNext: Boolean;
begin
  Result := FEnumeration.HasMoreElements;
end;

function TEnumerationIteratorAdapter.Next: TObject;
begin
  Result := FEnumeration.NextElement;
end;

procedure TEnumerationIteratorAdapter.Remove;
begin
  raise Exception.Create('Unsupported');
end;

end.
