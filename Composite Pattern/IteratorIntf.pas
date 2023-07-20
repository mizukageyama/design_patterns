unit IteratorIntf;

interface

type
  IIterator = interface
    function HasNext: Boolean;
    function Next: TObject;
    procedure Remove;
  end;

implementation

end.
