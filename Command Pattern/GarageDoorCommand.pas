unit GarageDoorCommand;

interface

uses CommandIntf, Light, GarageDoor;

type
  TGarageDoorCloseCommand = class(TInterfacedObject, ICommand)
  private
    FGarageDoor: TGarageDoor;
  public
    procedure Execute;
    constructor Create(AGarageDoor: TGarageDoor);
  end;
implementation

{ TLightOnCommand }

constructor TGarageDoorCloseCommand.Create(AGarageDoor: TGarageDoor);
begin
  FGarageDoor := AGarageDoor;
end;

procedure TGarageDoorCloseCommand.Execute;
begin
  FGarageDoor.Close;
end;

end.

