unit MenuIntf;

interface

uses
  IteratorIntf;

type
  IMenu = interface  ['{1A613555-DC9D-47F9-97DB-6EF443F8318B}']
    function CreateIterator: IIterator;
    function GetMenuName: String;
  end;

implementation

end.
