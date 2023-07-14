unit CommandU;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections;

type
  ICommand = interface
    procedure Execute;
  end;

  TLight = class
  public
    procedure OnLight;
    procedure OffLight;
    constructor Create;
  end;

  TLightOnCommand = class(TInterfacedObject, ICommand)
  private
    FLight: TLight;
  public
    procedure Execute;
    constructor Create(ALight: TLight);
  end;

  TSimpleRemoteControl = class
  private
    FSlot: ICommand;
  public
    constructor Create;
    procedure SetCommand(Command: ICommand);
    procedure ButtonWasPressed;
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

{ TLight }

constructor TLight.Create;
begin

end;

procedure TLight.OffLight;
begin
  WriteLn('Light is Off');
end;

procedure TLight.OnLight;
begin
  WriteLn('Light is On');
end;

{ TSimpleRemoteControl }

procedure TSimpleRemoteControl.ButtonWasPressed;
begin
  FSlot.Execute;
end;

constructor TSimpleRemoteControl.Create;
begin

end;

procedure TSimpleRemoteControl.SetCommand(Command: ICommand);
begin
  FSlot := Command;
end;

end.
