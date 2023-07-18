unit IteratorIntf;

interface

type
  IIterator = interface
    function HasNext: Boolean;
    function Next: TObject;
  end;

implementation

end.
