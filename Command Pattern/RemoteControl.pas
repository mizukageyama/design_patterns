unit RemoteControl;

interface

uses
  System.SysUtils, CommandIntf, NoCommand;

type
  TRemoteControl = class
  private
    FOnCommands: TArray<ICommand>;
    FOffCommands: TArray<ICommand>;
    FUndoCommand: ICommand;
  public
    constructor Create;
    procedure SetCommand(Slot: Integer; OnCommand, OffCommand: ICommand);
    procedure OnButtonWasPushed(Slot: Integer);
    procedure OffButtonWasPushed(Slot: Integer);
    procedure UndoButtonWasPushed;
    function ToString: string; override;
  end;

implementation

{ TRemoteControl }

constructor TRemoteControl.Create;
begin
  SetLength(FOnCommands, 7);
  SetLength(FOffCommands, 7);

  var NoCommand: ICommand := TNoCommand.Create;
  for var Index := 0 to 7 - 1 do
  begin
    FOnCommands[Index] := NoCommand;
    FOffCommands[Index] := NoCommand;
  end;

  FUndoCommand := NoCommand;
end;

procedure TRemoteControl.OffButtonWasPushed(Slot: Integer);
begin
  if FOffCommands[Slot] <> nil then
  begin
    FOffCommands[Slot].Execute;
    FUndoCommand := FOffCommands[Slot];
  end
end;

procedure TRemoteControl.OnButtonWasPushed(Slot: Integer);
begin
  if FOnCommands[Slot] <> nil then
  begin
    FOnCommands[Slot].Execute;
    FUndoCommand := FOnCommands[Slot];
  end
end;

procedure TRemoteControl.SetCommand(Slot: Integer; OnCommand,
  OffCommand: ICommand);
begin
  FOnCommands[Slot] := OnCommand;
  FOffCommands[Slot] := OffCommand;
end;

function TRemoteControl.ToString: string;
begin
  var StringBuilder := TStringBuilder.Create;

  var RemoteTitle := Format('%s---------- Remote Control ----------%s',
    [sLineBreak, sLineBreak]);
  StringBuilder.Append(RemoteTitle);

  for var Index := 0 to Length(FOnCommands) - 1 do
  begin
    var OnCommandObject := FOnCommands[Index] as TObject;
    var OffCommandObject := FOffCommands[Index] as TObject;
    var CommandsOption := Format('[slot %d] %-25s %s %s', [Index,
      OnCommandObject.ClassName, OffCommandObject.ClassName, sLineBreak]);

    StringBuilder.Append(CommandsOption);
  end;

  Result := StringBuilder.ToString;
end;

procedure TRemoteControl.UndoButtonWasPushed;
begin
  FUndoCommand.Undo;
end;

end.
