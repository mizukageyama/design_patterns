unit TVOffCommand;

interface

uses CommandIntf, TV;

type
  TTVOffCommand = class(TInterfacedObject, ICommand)
  private
    FTV : TTV;
  public
    constructor Create(ATV: TTV);
    procedure Execute;
    procedure Undo;
  end;
implementation

{ TTVOffCommand }

constructor TTVOffCommand.Create(ATV: TTV);
begin
  FTV := ATV;
end;

procedure TTVOffCommand.Execute;
begin
  FTV.OffTV;
end;

procedure TTVOffCommand.Undo;
begin
  FTV.OnTV;
end;

end.
