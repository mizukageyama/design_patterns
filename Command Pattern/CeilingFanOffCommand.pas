unit CeilingFanOffCommand;

interface

uses
  CommandIntf, CeilingFan;

type
  TCeilingFanOffCommand = class(TInterfacedObject, ICommand)
  private
    FCeilingFan: TCeilingFan;
    FPrevSpeed: Integer;
  public
    constructor Create(ACeilingFan: TCeilingFan);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TCeilingFanOffCommand }

constructor TCeilingFanOffCommand.Create(ACeilingFan: TCeilingFan);
begin
  FCeilingFan := ACeilingFan;
end;

procedure TCeilingFanOffCommand.Execute;
begin
  FPrevSpeed := FCeilingFan.GetSpeed;
  FCeilingFan.Off;
end;

procedure TCeilingFanOffCommand.Undo;
begin
  case FPrevSpeed of
  FCeilingFan.FHIGH:
    FCeilingFan.High;
  FCeilingFan.FMEDIUM:
    FCeilingFan.Medium;
  FCeilingFan.FLOW:
    FCeilingFan.Low;
  FCeilingFan.FOFF:
    FCeilingFan.Off;
  end;
end;

end.

