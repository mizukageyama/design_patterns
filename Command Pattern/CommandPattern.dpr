program CommandPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CommandU in 'CommandU.pas';

begin
  try
    var Remote: TSimpleRemoteControl := TSimpleRemoteControl.Create;
    var Light: TLight := TLight.Create;
    var LightOn: TLightOnCommand := TLightOnCommand.Create(Light);

    Remote.SetCommand(LightOn);
    Remote.ButtonWasPressed;
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
