unit LightOnCommand;

interface

uses CommandIntf, Light;

type
  TLightOnCommand = class(TInterfacedObject, ICommand)
  private
    FLight: TLight;
  public
    procedure Execute;
    procedure Undo;
    constructor Create(ALight: TLight);
  end;
implementation

{ TLightOnCommand }

constructor TLightOnCommand.Create(ALight: TLight);
begin
  FLight := ALight;
end;

procedure TLightOnCommand.Execute;
begin
  FLight.OnLight;
end;

procedure TLightOnCommand.Undo;
begin
  FLight.OffLight;
end;

end.
