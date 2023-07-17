unit EnumerationIntf;

interface

type
  IEnumeration = interface
    function HasMoreElements: Boolean;
    function NextElement: TObject;
  end;

implementation

end.
