unit LightOffCommand;

interface

uses CommandIntf, Light;

type
  TLightOffCommand = class(TInterfacedObject, ICommand)
  private
    FLight: TLight;
  public
    procedure Execute;
    procedure Undo;
    constructor Create(ALight: TLight);
  end;
implementation

{ TLightOnCommand }

constructor TLightOffCommand.Create(ALight: TLight);
begin
  FLight := ALight;
end;

procedure TLightOffCommand.Execute;
begin
  FLight.OffLight;
end;

procedure TLightOffCommand.Undo;
begin
  FLight.OnLight;
end;

end.

