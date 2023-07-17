unit TVOnCommand;

interface

uses CommandIntf, TV;

type
  TTVOnCommand = class(TInterfacedObject, ICommand)
  private
    FTV : TTV;
  public
    constructor Create(ATV: TTV);
    procedure Execute;
    procedure Undo;
  end;
implementation

{ TTVOffCommand }

constructor TTVOnCommand.Create(ATV: TTV);
begin
  FTV := ATV;
end;

procedure TTVOnCommand.Execute;
begin
  FTV.OnTV;
  FTV.SetInputChannel;
end;

procedure TTVOnCommand.Undo;
begin
  FTV.OffTV;
end;

end.

