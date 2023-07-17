unit CommandIntf;

interface

type
  ICommand = interface
    procedure Execute;
    procedure Undo;
  end;

implementation

end.
