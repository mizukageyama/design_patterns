unit CeilingFanOnCommand;

interface

uses
  CommandIntf, CeilingFan;

type
  TCeilingFanOnCommand = class(TInterfacedObject, ICommand)
  private
    FCeilingFan: TCeilingFan;
    FPrevSpeed: Integer;
  public
    constructor Create(ACeilingFan: TCeilingFan);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TCeilingFanOnCommand }

constructor TCeilingFanOnCommand.Create(ACeilingFan: TCeilingFan);
begin
  FCeilingFan := ACeilingFan;
end;

procedure TCeilingFanOnCommand.Execute;
begin
  FPrevSpeed := FCeilingFan.GetSpeed;
  FCeilingFan.High;
end;

procedure TCeilingFanOnCommand.Undo;
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
