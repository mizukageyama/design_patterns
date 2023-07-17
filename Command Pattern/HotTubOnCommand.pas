unit HotTubOnCommand;

interface

uses CommandIntf, HotTub;

type
  THotTubOnCommand = class(TInterfacedObject, ICommand)
  private
    FHotTub : THotTub;
  public
    constructor Create(AHotTub: THotTub);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ THotTubOffCommand }

constructor THotTubOnCommand.Create(AHotTub: THotTub);
begin
  FHotTub := AHotTub;
end;

procedure THotTubOnCommand.Execute;
begin
  FHotTub.OnHotTub;
	FHotTub.SetTemperature(104);
  FHotTub.Circulate;
end;

procedure THotTubOnCommand.Undo;
begin
  FHotTub.OffHotTub;
end;

end.

