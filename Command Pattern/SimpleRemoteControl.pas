unit SimpleRemoteControl;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, CommandIntf;

type
  TSimpleRemoteControl = class
  private
    FSlot: ICommand;
  public
    constructor Create;
    procedure SetCommand(Command: ICommand);
    procedure ButtonWasPressed;
  end;

implementation

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
