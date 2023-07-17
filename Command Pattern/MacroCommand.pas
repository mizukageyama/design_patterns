unit MacroCommand;

interface

uses CommandIntf;

type
  TMacroCommand = class(TInterfacedObject, ICommand)
  private
    FCommands: TArray<ICommand>;
  public
    constructor Create(ACommand: TArray<ICommand>);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TMacroCommand }

constructor TMacroCommand.Create(ACommand: TArray<ICommand>);
begin
  FCommands := ACommand;
end;

procedure TMacroCommand.Execute;
begin
  for var Index := 0 to Length(FCommands) - 1 do
    FCommands[Index].Execute;
end;

procedure TMacroCommand.Undo;
begin
  for var Index := 0 to Length(FCommands) - 1 do
    FCommands[Index].Undo;
end;

end.
