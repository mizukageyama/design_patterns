unit GarageDoorUpCommand;

interface

uses CommandIntf, Light, GarageDoor;

type
  TGarageDoorUpCommand = class(TInterfacedObject, ICommand)
  private
    FGarageDoor: TGarageDoor;
  public
    procedure Execute;
    procedure Undo;
    constructor Create(AGarageDoor: TGarageDoor);
  end;
implementation

{ TLightOnCommand }

constructor TGarageDoorUpCommand.Create(AGarageDoor: TGarageDoor);
begin
  FGarageDoor := AGarageDoor;
end;

procedure TGarageDoorUpCommand.Execute;
begin
  FGarageDoor.Up;
end;

procedure TGarageDoorUpCommand.Undo;
begin
  FGarageDoor.Down;
end;

end.

