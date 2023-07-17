unit NoCommand;

interface

uses CommandIntf;

type
  TNoCommand = class(TInterfacedObject, ICommand)
  public
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TNoCommand }

procedure TNoCommand.Execute;
begin

end;

procedure TNoCommand.Undo;
begin

end;

end.
