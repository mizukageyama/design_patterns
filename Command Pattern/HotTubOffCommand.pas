unit HotTubOffCommand;

interface

uses CommandIntf, HotTub;

type
  THotTubOffCommand = class(TInterfacedObject, ICommand)
  private
    FHotTub : THotTub;
  public
    constructor Create(AHotTub: THotTub);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ THotTubOffCommand }

constructor THotTubOffCommand.Create(AHotTub: THotTub);
begin
  FHotTub := AHotTub;
end;

procedure THotTubOffCommand.Execute;
begin
	FHotTub.SetTemperature(98);
  FHotTub.OffHotTub;
end;

procedure THotTubOffCommand.Undo;
begin
  FHotTub.OnHotTub;
end;

end.
