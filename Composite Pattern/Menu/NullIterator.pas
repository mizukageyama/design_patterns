unit NullIterator;

interface

uses
  IteratorIntf, System.Generics.Collections, System.SysUtils,
  MenuComponent;

type
  TNullIterator = class(TInterfacedObject, IIterator)
  private
    FItems: TList<TMenuComponent>;
    FPosition: Integer;
  public
    function HasNext: Boolean;
    function Next: TObject;
    procedure Remove;
  end;

implementation

{ TNullIterator }

function TNullIterator.HasNext: Boolean;
begin
  Result := False
end;

function TNullIterator.Next: TObject;
begin
  Result := nil;
end;

procedure TNullIterator.Remove;
begin
  raise ENotSupportedException.Create('This operation is not supported.');
end;

end.
