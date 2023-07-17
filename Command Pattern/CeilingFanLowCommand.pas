unit CeilingFanLowCommand;

interface

uses
  CommandIntf, CeilingFan;

type
  TCeilingFanLowCommand = class(TInterfacedObject, ICommand)
  private
    FCeilingFan: TCeilingFan;
    FPrevSpeed: Integer;
  public
    constructor Create(ACeilingFan: TCeilingFan);
    procedure Execute;
    procedure Undo;
  end;

implementation

{ TCeilingFanLowCommand }

constructor TCeilingFanLowCommand.Create(ACeilingFan: TCeilingFan);
begin
  FCeilingFan := ACeilingFan;
end;

procedure TCeilingFanLowCommand.Execute;
begin
  FPrevSpeed := FCeilingFan.GetSpeed;
  FCeilingFan.Low;
end;

procedure TCeilingFanLowCommand.Undo;
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
