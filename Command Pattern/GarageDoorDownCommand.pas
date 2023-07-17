unit GarageDoorDownCommand;

interface

uses CommandIntf, Light, GarageDoor;

type
  TGarageDoorDownCommand = class(TInterfacedObject, ICommand)
  private
    FGarageDoor: TGarageDoor;
  public
    procedure Execute;
    procedure Undo;
    constructor Create(AGarageDoor: TGarageDoor);
  end;
implementation

{ TLightOnCommand }

constructor TGarageDoorDownCommand.Create(AGarageDoor: TGarageDoor);
begin
  FGarageDoor := AGarageDoor;
end;

procedure TGarageDoorDownCommand.Execute;
begin
  FGarageDoor.Down;
end;

procedure TGarageDoorDownCommand.Undo;
begin
  FGarageDoor.Up;
end;

end.

